cask "papers" do
  version :latest
  sha256 :no_check

  url "https://download.readcube.com/app/Install%20Papers.zip"
  name "ReadCube Papers"
  desc "Reference management software for researchers"
  homepage "https://www.readcube.com/home"

  installer manual: "Papers Installer.app"

  uninstall quit:   "com.ReadCube.Papers",
            delete: "/Applications/Papers.app"

  zap trash: [
    "~/Library/Application Support/Papers",
    "~/Library/Application Support/ReadCube Shared",
    "~/Library/Caches/com.ReadCube.Papers",
    "~/Library/Caches/com.ReadCube.Papers.ShipIt",
    "~/Library/Cookies/com.ReadCube.Papers-Installer.binarycookies",
    "~/Library/HTTPStorages/com.ReadCube.Papers-Installer",
    "~/Library/Logs/Papers",
    "~/Library/Preferences/com.ReadCube.Papers.plist",
    "~/Library/Saved Application State/com.ReadCube.Papers.savedState",
  ]
end
