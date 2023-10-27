cask "genymotion" do
  on_monterey :or_older do
    version "3.5.0"
    sha256 "c4be3f53a85908027340b7529dcdc79e7a6b19572056b354fc94d9688c0c10f7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.5.1"
    sha256 "cc4bc949b8e5744272dbb77c798035ff009740d0eb8bd251b2b5d82daa2113fb"

    livecheck do
      url "https://www.genymotion.com/download/"
      regex(/href=.*?Genymotion[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)/i)
    end
  end

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name "Genymotion"
  desc "Android emulator"
  homepage "https://www.genymotion.com/"

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
