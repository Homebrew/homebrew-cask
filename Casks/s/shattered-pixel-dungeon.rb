cask "shattered-pixel-dungeon" do
  version "4.0.1"
  sha256 "d8d192bcff957b91a275cd31718cc4b2d2a9441c65891df4b1c3a3e1c1d34ea3"

  url "https://github.com/00-Evan/shattered-pixel-dungeon/releases/download/v#{version}/ShatteredPD-v#{version}-macOS.zip"
  name "Shattered Pixel Dungeon"
  desc "Traditional roguelike dungeon crawler with randomised levels, enemies and items"
  homepage "https://shatteredpixel.com/shatteredpd"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Shattered Pixel Dungeon.app"

  uninstall quit: "com.shatteredpixel.shatteredpixeldungeon.apple"

  zap trash: [
    "~/Library/Application Support/Shattered Pixel Dungeon",
    "~/Library/Saved Application State/com.shatteredpixel.shatteredpixeldungeon.apple.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
