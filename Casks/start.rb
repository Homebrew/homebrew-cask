cask "start" do
  arch arm: "arm", intel: "x86"
  folder_arch = on_arch_conditional arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  on_arm do
    version "0.301.14084-45"
    sha256 "5a84b3bd28a9654ca70b1a9375e7e7cd5fe1be87a9dfe20ec991daafa5434b2f"
  end
  on_intel do
    version "0.301.13230-36"
    sha256 "ad1fc4537cde18bcddf5334598fb07bc907bc0b0bb09d61e95bd05dbd1d7dea2"
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
