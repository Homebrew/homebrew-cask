cask "genymotion" do
  version "3.2.0"
  sha256 "9025dd0baf74a7d7258570d6d2ca0f45af9f5c8e680080012cac7d42b411e9e3"

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  appcast "https://www.genymotion.com/product-release-note/desktop/"
  name "Genymotion"
  desc "Android emulator"
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
