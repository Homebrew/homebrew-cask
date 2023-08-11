cask "adrive" do
  version "4.9.3"
  sha256 :no_check

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive.dmg",
      verified: "cdn.aliyundrive.net/"
  name "Aliyundrive"
  name "阿里云盘"
  desc "Intelligent cloud storage platform"
  homepage "https://www.aliyundrive.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
