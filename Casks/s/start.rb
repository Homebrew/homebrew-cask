cask "start" do
  arch arm: "arm", intel: "x86"
  folder_arch = on_arch_conditional arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "0.301.21554"
  sha256 arm:   "8b4ea8ca2e4922033863b0d8a7886e90a6209d6c8a7c2660490a691fde391192",
         intel: "d41559caa3fa7a8954bb4bffb04d285e2a7f0b458c4e223e865bbeca1615d4f8"

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{folder_arch}START-Installer-#{arch}-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info#{livecheck_arch}"
    regex(/START-Installer[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("configs", "macos-update-info#{livecheck_arch}", "value")&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true

  app "START.app"

  uninstall quit: "com.tencent.start.mac.Start"

  zap trash: [
    "~/.START",
    "~/Library/Caches/com.tencent.start.mac.Start",
    "~/Library/Caches/com.tencent.start.mac.Start.STGame",
    "~/Library/Group Containers/com.tencent.start.mac",
    "~/Library/HTTPStorages/com.tencent.start.mac.Start",
    "~/Library/HTTPStorages/com.tencent.start.mac.Start.STGame",
    "~/Library/Preferences/com.tencent.start.mac.Start.plist",
    "~/Library/Preferences/com.tencent.start.mac.Start.STGame.plist",
    "~/Library/Saved Application State/com.tencent.start.mac.Start.savedState",
  ]
end
