cask "adrive" do
  arch arm: "-arm64"

  version "6.3.3"
  sha256 arm:   "061a517dcd9e1d9b8176a6bf61770011c3ad73e4fe16361d055430c5ebb2740d",
         intel: "9aad594cb40f59344e03793ca2bf74a20827c5d460860c912de3f6067c767c0d"

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
