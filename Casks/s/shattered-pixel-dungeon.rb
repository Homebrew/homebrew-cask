cask "shattered-pixel-dungeon" do
  version "3.2.2"
  sha256 "a9afef11583258c1c34179b0fc8620c434ace353bdc87dfb8f29295acb726847"

  url "https://github.com/00-Evan/shattered-pixel-dungeon/releases/download/#{version}/ShatteredPD-v#{version}-macOS.zip",
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
