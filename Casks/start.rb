cask "start" do
  url_arch = Hardware::CPU.intel? ? "" : "m1/"
  livecheck_arch = Hardware::CPU.intel? ? "" : "-arm"

  if Hardware::CPU.intel?
    version "0.301.6-170"
    sha256 "65c42018e7128a9c3e454c7decfd53b162d7a4adb48bf1d5efd3b2d12849f3a0"
  else
    version "0.301.6-54"
    sha256 "e6aac4925c9517df3e342ae6f8434996d65cb72decfbe603c8b96d20327eb564"
  end

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{url_arch}START-Installer-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info#{livecheck_arch}"
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
    "~/Library/Preferences/com.tencent.start.mac.Start.plist",
    "~/Library/Preferences/com.tencent.start.mac.Start.STGame.plist",
  ]
end
