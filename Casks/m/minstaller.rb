cask "minstaller" do
  version "3.1.0"
  sha256 "7a57d4c812f6ea5e366760eab123a6a0653f0a4af080ca3d129c556918ef58bf"

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
