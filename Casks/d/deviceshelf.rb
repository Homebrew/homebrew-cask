cask "deviceshelf" do
  version "1.9.32"
  sha256 "0ca119e8b8de914e2063699133b0efbbd7e3d6497f7ce7daedf779e60707dafc"

  url "https://downloads.deviceshelf.app/DeviceShelf-#{version}.dmg"
  name "DeviceShelf"
  desc "Scanner for devices, open ports and security risk on the local network"
  homepage "https://deviceshelf.app/"

  livecheck do
    url "https://deviceshelf.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "DeviceShelf.app"

  zap trash: [
    "/Library/Application Support/DeviceShelf",
    "~/Library/Application Support/DeviceShelf",
    "~/Library/Caches/com.wails.DeviceShelf",
    "~/Library/Preferences/com.wails.DeviceShelf.plist",
    "~/Library/Saved Application State/com.wails.DeviceShelf.savedState",
    "~/Library/WebKit/com.wails.DeviceShelf",
  ]
end
