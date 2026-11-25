cask "pikpak" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2.2492"
  sha256 arm:   "e1a0ee9926f2a351218ec907d277289f8a1cb7cc8b1d27d8a6063d9b436eff61",
         intel: "09622994022da74a48d28fbf95537dbec207bc34c3df0376896ef08dd6b19049"

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

  depends_on macos: :monterey

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
