cask "start" do
  arch arm: "arm", intel: "x86"
  folder_arch = on_arch_conditional arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_intel do
    version "0.301.10519-7"
    sha256 "a0c0fde038d7a39a22eb4951247ec0a85f4d7c2b87a8bacda9c97e04f54a8593"
  end
  on_arm do
    version "0.301.10519-5"
    sha256 "ba57282d869e13d2c39bc5ff31981a000ebbfd041284f326f6ca092f4d434249"
  end

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
