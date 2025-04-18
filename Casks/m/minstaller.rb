cask "minstaller" do
  on_catalina :or_older do
    version "3.0.2"
    sha256 "e87e41c78dffaee4c01803b01fc324851de2e482a1c22e6d35a49b37f7f65192"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.2.1"
    sha256 "3c03b7dd9a037b7fd3564f5d121be0490b92e07f2cc4d3d8dd69dc4b401bee86"

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
  depends_on macos: ">= :mojave"

  app "mInstaller.app"

  zap trash: [
    "~/Library/Application Support/mInstaller",
    "~/Library/Caches/mInstaller",
    "~/Library/HTTPStorages/com.motionvfx.mInstaller",
    "~/Library/Preferences/com.motionvfx.mInstaller.plist",
  ]
end
