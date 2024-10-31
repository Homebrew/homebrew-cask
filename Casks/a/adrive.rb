cask "adrive" do
  arch arm: "-arm64"

  on_arm do
    version "6.6.0"
    sha256 "ddcf6e7778977d614a08621b20c9451ccd0725ff772ee35543286a56fa17e58b"
  end
  on_intel do
    version "6.6.1"
    sha256 "c2d449bc57b6708a3d3f90775e7c62ab720ea516e2fb07bbf85ed779dc0afeb8"
  end

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
