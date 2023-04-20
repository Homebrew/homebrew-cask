cask "genymotion" do
  version "3.3.3"
  sha256 "74b9d5cd5113a362a87a563e5101e975818d5010bdf6733bbb67c58e10927b67"

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name "Genymotion"
  desc "Android emulator"
  homepage "https://www.genymotion.com/"

  livecheck do
    url "https://www.genymotion.com/download/"
    regex(/Genymotion\s*Desktop\s*(\d+(?:\.\d+)+)/i)
  end

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
