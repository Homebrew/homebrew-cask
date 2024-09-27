cask "minstaller" do
  version "3.1.0"
  sha256 :no_check

  url "https://s3.motionvfx.com/mvfxpublic/mInstaller/mInstaller.dmg"
  name "mInstaller"
  desc "Downloader and manager for MotionVFX products"
  homepage "https://www.motionvfx.com/"

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
