cask "start" do
  arch arm: "arm", intel: "x86"
  folder_arch = on_arch_conditional arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "0.301.22224"
  sha256 arm:   "7f7b0fff50840076cbdab99e75d21700f78943265060a4edea56c7d97e96ec41",
         intel: "e71d90b54de4712cbd4426362054f048fdbefc6a28ae0c1becc57a2d4f168915"

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
