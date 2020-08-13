cask "genymotion" do
  version "3.1.1"
  sha256 "ae39344d1e09b3ad04c6f2b4551d86c169357da03991095752646665c1cff197"

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
