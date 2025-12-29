cask "pikpak" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4.2039"
  sha256 arm:   "8b653f3ff998b73a03188e850b6245b64239afd0bf08a5f541148bae1eea5ecb",
         intel: "b941da474d9ecbee01c0a527ffb73cf572ae562d80e43a3bd4341f6c51793a6d"

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
