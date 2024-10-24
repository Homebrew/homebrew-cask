cask "genymotion" do
  on_monterey :or_older do
    version "3.5.0"
    sha256 "c4be3f53a85908027340b7529dcdc79e7a6b19572056b354fc94d9688c0c10f7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.8.0"
    sha256 "eda77ba81deb43e221e7e2e1a37f2e6feb362237ed0e160d917e3c7ee277b679"

    livecheck do
      url "https://www.genymotion.com/product-desktop/download/"
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
