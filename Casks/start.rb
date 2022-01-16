cask "start" do
  url_arch = Hardware::CPU.intel? ? "" : "m1/"
  livecheck_arch = Hardware::CPU.intel? ? "" : "-arm"

  if Hardware::CPU.intel?
    version "0.299.4-143"
    sha256 "aa20d9c5efdbab42f14b1f8a0e58eb4e1ba5d3e11c48e3e05c986c2afbd22130"
  else
    version "0.300.2-38"
    sha256 "44a371c013a0b2f989ade67a110fbafecc404943bfb154736ee47fabef03c73f"
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
