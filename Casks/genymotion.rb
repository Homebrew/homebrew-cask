cask "genymotion" do
  version "3.3.0"
  sha256 "625a07da527060f45a490c1c284d1d51442d9d7e981bf6b2bdc249cc544b8e05"

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
