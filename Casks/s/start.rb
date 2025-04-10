cask "start" do
  arch arm: "arm", intel: "x86"
  folder_arch = on_arch_conditional arm: "m1/"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "0.301.19805"
  sha256 arm:   "2518f9928c300075a28ba54b26eb0c2ab06110af2c75f5ca48cdef256a992dc7",
         intel: "c4db31bdfdc74f08e074b76181fa9ed36d68d7b8997e6172f74bbb2b27fbbf0d"

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
  depends_on macos: ">= :sierra"

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
