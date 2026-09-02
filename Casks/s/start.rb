cask "start" do
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "0.301.23903,10000000"
  sha256 "df97ccd749000955f70288d3f00cce0196db4375c69203c539e1ff0a677b469e"

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{version.csv.first}/START-Installer-universal-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info#{livecheck_arch}"
    regex(/START-Installer(?:-universal)?[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("configs", "macos-update-info#{livecheck_arch}", "value")&.match(regex)
      next if match.blank?

      match[1].tr("-", ",")
    end
  end

  auto_updates true
  depends_on macos: :big_sur

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
