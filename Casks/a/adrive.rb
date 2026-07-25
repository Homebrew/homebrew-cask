cask "adrive" do
  arch arm: "-arm64"

  version "6.9.3"
  sha256 arm:   "dbf432bf09a4f6669fb9a74c56d082833b751d1b036d627550f6cf55ef7f32f4",
         intel: "a0273748eda47b69f621e281a8228fd2791c4f8615ce041a3f248eec629941b2"

  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
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
  depends_on :macos

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
