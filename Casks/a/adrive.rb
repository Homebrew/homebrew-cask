cask "adrive" do
  arch arm: "-arm64"

  version "6.3.2"
  sha256 arm:   "0b77d04bd463f56ae608bea6550a5d0f11821d459f3a3316af36d99bf8522af5",
         intel: "d6eb559b16337da98b1ced7a7b4cd11d9f58eb0d137467c6e872a08d50abb64f"

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive-#{version}#{arch}.dmg",
      verified:   "cdn.aliyundrive.net/",
      user_agent: :fake
  name "Aliyundrive"
  name "阿里云盘"
  desc "Intelligent cloud storage platform"
  homepage "https://www.aliyundrive.com/"

  livecheck do
    url "https://www.aliyundrive.com/download"
    regex(/aDrive[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
