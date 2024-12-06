cask "minstaller" do
  version "3.2.0"
  sha256 "a802933d33ce854df89ddd7907ab4008c874d34594f3d959ed4afb7e8b8f2127"

  url "https://s3.motionvfx.com/mvfxpublic/mInstaller/sparkle/mInstaller-#{version}.zip"
  name "mInstaller"
  desc "Downloader and manager for MotionVFX products"
  homepage "https://www.motionvfx.com/"

  livecheck do
    url "https://s3.motionvfx.com/mvfxpublic/mInstaller/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "mInstaller.app"

  zap trash: [
    "~/Library/Application Support/mInstaller",
    "~/Library/Caches/mInstaller",
    "~/Library/HTTPStorages/com.motionvfx.mInstaller",
    "~/Library/Preferences/com.motionvfx.mInstaller.plist",
  ]
end
