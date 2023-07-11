cask "papers" do
  arch arm: "arm64", intel: "x64"

  version "4.36.2320"
  sha256 arm:   "52981707d35c9b752e9f717540e4bf79d279a854adeaf919e1252aefe6d3f9d8",
         intel: "3c94dad2238e9d73fdb35eb537d0b3b7e1dc8e70ae06191fe9a7dc655594acfb"

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
