cask "genymotion" do
  on_monterey :or_older do
    version "3.5.0"
    sha256 "c4be3f53a85908027340b7529dcdc79e7a6b19572056b354fc94d9688c0c10f7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.7.1"
    sha256 "ef5ee78f32139496b733e270c0520b7055129e072536e4c5d36ed2b3538cf152"

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
