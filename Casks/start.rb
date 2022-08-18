cask "start" do
  arch arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_intel do
    version "0.301.29-193"
    sha256 "fcbfb60dd562ef3b1c5c0198f987b0dbdd95b287b9019b3a63e1a671cb25d313"
  end
  on_arm do
    version "0.301.29-77"
    sha256 "097d7b55bf13761f8d0142a5a486077205bbcb49dd65e55ba6ed667095d26a2c"
  end

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{arch}START-Installer-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info#{livecheck_arch}"
    regex(/START-Installer[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
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
