cask "shattered-pixel-dungeon" do
  version "4.0.3"
  sha256 "321038ea3781b18977656ffda2ccccbda6c439d06e84a0d934202342d6f94f30"

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
