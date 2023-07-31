cask "genymotion" do
  version "3.5.0"
  sha256 "c4be3f53a85908027340b7529dcdc79e7a6b19572056b354fc94d9688c0c10f7"

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name "Genymotion"
  desc "Android emulator"
  homepage "https://www.genymotion.com/"

  livecheck do
    url "https://www.genymotion.com/download/"
    regex(/Genymotion\s*Desktop\s*(\d+(?:\.\d+)+)/i)
  end

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

  caveats do
    requires_rosetta
  end
end
