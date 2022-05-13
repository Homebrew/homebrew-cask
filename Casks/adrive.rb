cask "adrive" do
  version "3.3.0"
  sha256 :no_check

  url "https://yunpan.aliyun.com/downloads/apps/desktop/aDrive.dmg",
      verified: "yunpan.aliyun.com/"
  name "Aliyundrive"
  desc "阿里云盘"
  homepage "https://www.aliyundrive.com/"

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Logs/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
