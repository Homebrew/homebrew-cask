cask "adrive" do
  version "4.11.0"
  sha256 "8ed69cc6855d65cdd437c023c931fd30175fbdbb76fb0c1f6a548c34e9281f09"

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive-#{version}.dmg",
      verified: "cdn.aliyundrive.net/"
  name "Aliyundrive"
  name "阿里云盘"
  desc "Intelligent cloud storage platform"
  homepage "https://www.aliyundrive.com/"

  livecheck do
    url "https://www.aliyundrive.com/download"
    regex(/aDrive-(\d+(?:\.\d+)+)\.dmg/i)
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
