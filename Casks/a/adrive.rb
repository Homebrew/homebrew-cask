cask "adrive" do
  arch arm: "-arm64"

  version "6.9.0"
  sha256 arm:   "d34b82b8200fcd291fa3713daf6e98b8f4ac8731f3ca9d7a94dc5b8de9e819af",
         intel: "b7bf89688504c5a18bc9bf96c03aaa8e48b5cb557647fe780f68e780a1fda60b"

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive-#{version}#{arch}.dmg",
      verified:   "cdn.aliyundrive.net/",
      user_agent: :fake
  name "Aliyundrive"
  name "阿里云盘"
  desc "Intelligent cloud storage platform"
  homepage "https://www.aliyundrive.com/"

  livecheck do
    url "https://www.aliyundrive.com/download"
    regex(/aDrive[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  auto_updates true

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
