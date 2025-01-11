cask "adrive" do
  arch arm: "-arm64"

  version "6.8.0"
  sha256 arm:   "1d1960e0f1d6eda5321393121852ca46369a64518d91aa9c70e3ba3a1798903c",
         intel: "c3cdf97597fac4d5063db841735117f15eeced571f4016b31189667666a316c8"

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
