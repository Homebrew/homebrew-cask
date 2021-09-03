cask "start" do
  version "0.297.2-121"
  sha256 "423416d983f69f7440038a7b733250d81f03272dbf27ba76a2715415450ca9c3"

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/START-Installer-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info"
    strategy :page_match
    regex(%r{.*/START-Installer-([.\d\-]+)\.dmg}i)
  end

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
