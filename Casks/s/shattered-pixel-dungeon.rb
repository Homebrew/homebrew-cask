cask "shattered-pixel-dungeon" do
  version "3.2.1"
  sha256 "3b5a4e7fcd2fc075306e362496daab2c1fd76c1593569690271da2a11156e82c"

  url "https://github.com/00-Evan/shattered-pixel-dungeon/releases/download/v#{version}/ShatteredPD-v#{version}-macOS.zip",
      verified: "github.com/00-Evan/shattered-pixel-dungeon/"
  name "Shattered Pixel Dungeon"
  desc "Traditional roguelike dungeon crawler with randomised levels, enemies and items"
  homepage "https://shatteredpixel.com/shatteredpd"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Shattered Pixel Dungeon.app"

  zap trash: [
    "~/Library/Application Support/Shattered Pixel Dungeon",
    "~/Library/Saved Application State/com.shatteredpixel.shatteredpixeldungeon.apple.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
