cask "adrive" do
  arch arm: "-arm64"

  on_arm do
    version "6.7.4"
    sha256 "957e711b97dc876e2d10e5119eefbbc107ae253aa4558fa7f70ace86a3e6b443"
  end
  on_intel do
    version "6.7.3"
    sha256 "9a0893d975c9dd0d6ea5a61b189c96c4bfe8021777f34335c449d47a541216fc"
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
