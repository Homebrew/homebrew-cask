cask "pikpak" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3.2033"
  sha256 arm:   "563ff2fdb63f6fcc703b905c6333258db8a07cbfe3ce01f01b5c977be8be355b",
         intel: "5f54e4d5cfcd7015cee4fb8c7639439f33172d774ccdb7b4c29d96273a885db9"

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

  depends_on macos: ">= :big_sur"

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
