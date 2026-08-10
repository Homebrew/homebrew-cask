cask "deviceshelf" do
  version "1.9.4"
  sha256 "8B591AF494B03D8496BF41C96827AE12139744C83C4D9B855B211E7E2E0C5C00"

  url "https://downloads.deviceshelf.app/DeviceShelf-#{version}.dmg",
      verified: "downloads.deviceshelf.app/"
  name "DeviceShelf"
  desc "Scanner for devices, open ports and security risk on the local network"
  homepage "https://deviceshelf.app/"

  livecheck do
    url "https://deviceshelf.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # No version floor on purpose. The app runs on 10.13 and up, which is older
  # than anything Homebrew still recognises: its oldest symbol is :catalina
  # (10.15) and :high_sierra was removed, so naming one would claim a
  # requirement we do not have.
  depends_on :macos

  app "DeviceShelf.app"

  # The /Library path is installed by the app itself, not by this cask, when
  # live bandwidth is switched on: a ChmodBPF helper that grants the BPF
  # devices to the admin group. It is left behind otherwise, and removing it
  # asks for a privilege prompt.
  zap trash: [
    "/Library/Application Support/DeviceShelf",
    "~/Library/Application Support/DeviceShelf",
    "~/Library/Preferences/com.wails.DeviceShelf.plist",
    "~/Library/Saved Application State/com.wails.DeviceShelf.savedState",
  ]
end
