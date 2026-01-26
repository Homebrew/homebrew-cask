cask "pikpak" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6.3005"
  sha256 arm:   "9900b973703ba6139a2c32ee3b6baecd5efe04de7ae053574d4ada29d9ade5ac",
         intel: "d165e035e84660ae648b0597604f0c78881b948bbdd6c10b5dc6487d13192a6e"

  url "https://static.mypikpak.com/mac/PikPak-v#{version}-#{arch}.zip"
  name "PikPak"
  desc "Client for PikPak cloud storage service"
  homepage "https://mypikpak.com/"

  livecheck do
    url "https://config.mypikpak.com/config/v1/client_version?data[channel]=default&data[versionName]=0&data[arch]=#{arch}&client=mac"
    strategy :json do |json|
      json["name"]
    end
  end

  depends_on macos: ">= :monterey"

  app "PikPak.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pikcloud.pikpak.mac.sfl*",
    "~/Library/Application Support/PikPak",
    "~/Library/Caches/com.pikcloud.pikpak.mac",
    "~/Library/Caches/com.pikcloud.pikpak.mac.ShipIt",
    "~/Library/Caches/com.pikcloud.pikplayer.mac",
    "~/Library/HTTPStorages/com.pikcloud.pikpak.mac",
    "~/Library/Logs/PikPak",
    "~/Library/Preferences/com.pikcloud.pikpak.mac.plist",
    "~/Library/Preferences/com.pikcloud.pikplayer.mac.plist",
  ]
end
