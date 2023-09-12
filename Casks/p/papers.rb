cask "papers" do
  arch arm: "arm64", intel: "x64"

  version "4.37.2366"
  sha256 arm:   "1eabfd6fc021923866e4515e76b5cdc52795c9433736776ddc5d5c41afd0b0fd",
         intel: "4f8307f3ce447e6f4fc890b8bfe4dc1fd5372502adfed0c8e29a782132905e95"

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
