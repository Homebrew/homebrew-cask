cask "minstaller" do
  version "3.2.5"
  sha256 "58bf762d53c0a30c6b7a685152f28591c5b1ac01519e03114c5e75b3ee12e5b4"

  url "https://s3.motionvfx.com/mvfxpublic/mInstaller/sparkle/mInstaller-#{version}.zip"
  name "mInstaller"
  desc "Downloader and manager for MotionVFX products"
  homepage "https://www.motionvfx.com/"

  livecheck do
    url "https://s3.motionvfx.com/mvfxpublic/mInstaller/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "mInstaller.app"

  zap trash: [
    "~/Library/Application Support/mInstaller",
    "~/Library/Caches/mInstaller",
    "~/Library/HTTPStorages/com.motionvfx.mInstaller",
    "~/Library/Preferences/com.motionvfx.mInstaller.plist",
  ]
end
