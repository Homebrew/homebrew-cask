cask "genymotion" do
  on_monterey :or_older do
    version "3.5.0"
    sha256 "c4be3f53a85908027340b7529dcdc79e7a6b19572056b354fc94d9688c0c10f7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.11.0"
    sha256 "5429306195396fb2a64a53ee3db41e3ef61f4c45fdbfcd74a20604724fbc7895"

    livecheck do
      url "https://www.genymotion.com/product-desktop/download/"
      regex(/href=.*?Genymotion[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)/i)
    end
  end

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name "Genymotion"
  desc "Android emulator"
  homepage "https://www.genymotion.com/"

  depends_on :macos

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
