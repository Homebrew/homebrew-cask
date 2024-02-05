cask "shattered-pixel-dungeon" do
  version "2.3.2"
  sha256 "ee964d84aa098726c28bbf80c918b27350d1335ee975ad5936015f792f75bed4"

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
end
