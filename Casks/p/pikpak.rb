cask "pikpak" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1.2450"
  sha256 arm:   "4cf32ff5da4fac9611063b27ecf562c01bf092fbff64f99e34942ed6034c20b6",
         intel: "7a0b487df6ca249ae1074f0dbb9a533f2d034d9e3413bddd1ac8ed641b50ad1e"

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
