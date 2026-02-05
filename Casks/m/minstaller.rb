cask "minstaller" do
  on_catalina :or_older do
    version "3.0.2"
    sha256 "e87e41c78dffaee4c01803b01fc324851de2e482a1c22e6d35a49b37f7f65192"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.2.3"
    sha256 "cbb5063b1818470fb6e8e4aa41fbabd3366d85e8c92432cbc7a88dd120627e67"

    livecheck do
      url "https://s3.motionvfx.com/mvfxpublic/mInstaller/sparkle/appcast.xml"
      strategy :sparkle
    end
  end

  url "https://s3.motionvfx.com/mvfxpublic/mInstaller/sparkle/mInstaller-#{version}.zip"
  name "mInstaller"
  desc "Downloader and manager for MotionVFX products"
  homepage "https://www.motionvfx.com/"

  auto_updates true

  app "mInstaller.app"

  zap trash: [
    "~/Library/Application Support/mInstaller",
    "~/Library/Caches/mInstaller",
    "~/Library/HTTPStorages/com.motionvfx.mInstaller",
    "~/Library/Preferences/com.motionvfx.mInstaller.plist",
  ]
end
