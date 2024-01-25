cask "adrive" do
  version "4.12.0"
  sha256 "c6265bce6b6e28568359e09e0d069795364e9f42e15fdc4a7d8b8e437991c917"

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive-#{version}.dmg",
      verified: "cdn.aliyundrive.net/"
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
