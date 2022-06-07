cask "start" do
  arch = Hardware::CPU.intel? ? "" : "m1/"

  if Hardware::CPU.intel?
    version "0.301.16-180"
    sha256 "e0ac956a3f069a89860a3d061b04ad751cb6b00975656498eaaa69cd334aed82"
  else
    version "0.299.1-26"
    sha256 "0cf36b7224a9f0d60bd052ff4fcabff1d293ce286bb613520ebf66742090c45a"
  end

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{arch}START-Installer-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url :homepage
    regex(%r{.*installer/#{arch}START-Installer[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
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
