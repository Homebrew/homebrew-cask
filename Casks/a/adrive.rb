cask "adrive" do
  arch arm: "-arm64"

  version "6.8.5"
  sha256 arm:   "9b15dc9b1b6281c74adccf1a19135f68ece4aab33c0c427a1f96a3128035208f",
         intel: "6e8c605e8576b50b98c8f12e514f48c50c079a0c1ae8cbef6a7dbb9a46e10401"

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
  depends_on macos: ">= :high_sierra"

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
