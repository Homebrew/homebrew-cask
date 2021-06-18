cask "start" do
  version "0.292.3-89"
  sha256 "1708e1818d0a67afebdac5e089c48fcc77d51e0f132b11c7808bad861273dba5"

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/START-Installer-#{version}.dmg?"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "START.app"

  uninstall quit: "com.tencent.start.mac.Start"

  zap trash: [
    "~/Library/Caches/com.tencent.start.mac.Start",
    "~/Library/Caches/com.tencent.start.mac.Start.STGame",
    "~/Library/Group Containers/com.tencent.start.mac",
    "~/Library/Preferences/com.tencent.start.mac.Start.STGame.plist",
    "~/Library/Preferences/com.tencent.start.mac.Start.plist",
  ]
end
