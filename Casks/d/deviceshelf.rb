cask "deviceshelf" do
  version "1.9.33"
  sha256 "7abfec34faa05baa0b54801b7796e9fe7f3e6a97696bde7f3f95745d5ae8e107"

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
