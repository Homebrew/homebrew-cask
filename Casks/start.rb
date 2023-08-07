cask "start" do
  arch arm: "arm", intel: "x86"
  folder_arch = on_arch_conditional arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "0.301.14186-48"
  sha256 arm:   "b46e9ff17a0e59cbe25da26c9e1600a6c49845fabaeee070d3907e3c4ebe7efd",
         intel: "a67a1322571d5fc5d69742564bd14c72085af5e3490d1f524bcb42f377a33519"

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{folder_arch}START-Installer-#{arch}-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info#{livecheck_arch}"
    regex(/START-Installer[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
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
