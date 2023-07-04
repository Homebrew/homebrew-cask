cask "papers" do
  arch arm: "arm64", intel: "x64"

  version "4.36.2283"
  sha256 arm:   "77a11c3d45aa97c39592667b3d90e596147f01feaa2087de05eaf22ec33a6410",
         intel: "044b127273844945d5e2f1b3cdc0de391a339049c092bf20e88c5b6aaf12a4f7"

  url "https://update.readcube.com/desktop/updates/Papers_Setup_#{version}-#{arch}.zip"
  name "ReadCube Papers"
  desc "Reference management software for researchers"
  homepage "https://www.readcube.com/home"

  livecheck do
    url "https://s3.amazonaws.com/update.readcube.com/desktop/updates/latest-mac.yml"
    strategy :electron_builder
  end

  app "Papers.app"

  zap trash: [
    "~/Documents/Papers Library",
    "~/Documents/Papers Styles",
    "~/Library/Application Support/Papers",
    "~/Library/Application Support/ReadCube Shared",
    "~/Library/Caches/com.ReadCube.Papers",
    "~/Library/Caches/com.ReadCube.Papers.ShipIt",
    "~/Library/Cookies/com.ReadCube.Papers-Installer.binarycookies",
    "~/Library/HTTPStorages/com.ReadCube.Papers-Installer",
    "~/Library/Logs/Papers",
    "~/Library/Preferences/com.ReadCube.Papers.plist",
    "~/Library/Saved Application State/com.ReadCube.Papers-Installer.savedState",
    "~/Library/Saved Application State/com.ReadCube.Papers.savedState",
  ]
end
