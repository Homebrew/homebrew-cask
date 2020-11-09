cask "genymotion" do
  version "3.1.2"
  sha256 "6dbed0cd76b11c8b5c01ef2caa08cf8fde4150ba31e3284e7b1e3f736ab244fd"

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  appcast "https://www.genymotion.com/product-release-note/desktop/"
  name "Genymotion"
  homepage "https://www.genymotion.com/"

  depends_on cask: "virtualbox"

  app "Genymotion.app"
  app "Genymotion Shell.app"
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"

  zap trash: [
    "~/.Genymobile",
    "~/Library/Caches/Genymobile",
    "~/Library/Preferences/com.genymobile.Genymotion.plist",
    "~/Library/Preferences/com.genymobile.soft.Genymotion.plist",
    "~/Library/Saved Application State/com.genymobile.genymotion.savedState",
    "~/Library/Saved Application State/com.genymobile.player.savedState",
  ]
end
