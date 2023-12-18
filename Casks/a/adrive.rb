cask "adrive" do
  version "4.9.15"
  sha256 "404e1ca75200730bc8b7f0724baa404ee39c0b9b3db2e9665a87b585845d12eb"

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive-#{version}.dmg",
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
  depends_on macos: ">= :high_sierra"

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
