package;

import flixel.group.FlxSpriteGroup;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxTimer;
import flixel.FlxObject;
import flixel.util.FlxColor;
import flixel.math.FlxVector;
import flash.display.BlendMode;

class SpawnGroup extends FlxSpriteGroup {
  var squares:FlxSpriteGroup;

  public function new():Void {
    super();
    x = FlxG.width/2 - 12;
    y = FlxG.height/2 - 36;

    squares = new FlxSpriteGroup();

    var square = new FlxSprite();
    square.loadGraphic("assets/images/playerSpawn.png");
    square.color = 0xffffff00;
    square.blend = BlendMode.ADD;
    squares.add(square);
    
    square = new FlxSprite();
    square.loadGraphic("assets/images/playerSpawn.png");
    square.color = 0xffff00ff;
    square.blend = BlendMode.ADD;
    squares.add(square);

    square = new FlxSprite();
    square.loadGraphic("assets/images/playerSpawn.png");
    square.color = 0xff00ffff;
    square.blend = BlendMode.ADD;
    squares.add(square);

    add(squares);
  }

  override public function update(elapsed:Float):Void {
    for (square in squares.members) {
      square.offset.x = Reg.random.int(-1, 1);
      square.offset.y = Reg.random.int(-1, 1);
    }
    super.update(elapsed);
  }
}
