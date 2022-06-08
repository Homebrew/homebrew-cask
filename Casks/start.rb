cask "start" do
  arch = Hardware::CPU.intel? ? "" : "m1/"

  if Hardware::CPU.intel?
    version "0.301.16-180"
    sha256 "e0ac956a3f069a89860a3d061b04ad751cb6b00975656498eaaa69cd334aed82"
  else
    version "0.301.16-64"
    sha256 "dd5cf416e0de17be02cd9ade221be5196adb43d2fec650d6a3f8ce843b7b2fa4"
  end

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{arch}START-Installer-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  # Upstream is replacing the intel version of the app on the homepage with javascript after page load.
  # The arm64 version is not being replaced - so a split livecheck is required.
  if Hardware::CPU.intel?
    livecheck do
      url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info"
      regex(%r{.*/START-Installer[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    end
  else
    livecheck do
      url :homepage
      regex(%r{.*installer/#{arch}START-Installer[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "START.app"

  uninstall quit: "com.tencent.start.mac.Start"

  zap trash: [
    "~/Library/Caches/com.tencent.start.mac.Start",
    "~/Library/Caches/com.tencent.start.mac.Start.STGame",
    "~/Library/Group Containers/com.tencent.start.mac",
    "~/Library/Preferences/com.tencent.start.mac.Start.plist",
    "~/Library/Preferences/com.tencent.start.mac.Start.STGame.plist",
  ]
end
