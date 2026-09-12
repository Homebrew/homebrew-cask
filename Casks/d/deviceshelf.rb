cask "deviceshelf" do
  version "1.9.34"
  sha256 "0c6e90c02d68bbabdbc1d7b9e08504315485cd64e53f69bbc09b1ed4dc1af303"

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
