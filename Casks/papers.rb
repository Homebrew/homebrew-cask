cask "papers" do
  arch arm: "arm64", intel: "x64"

  version "4.36.2255"
  sha256 arm:   "dd88e1dfd9d7dc99db5e46836e2b021558d8006c789cebceba22c2328677645a",
         intel: "9fb69289fa1d6d98cda6ac624880b475bd1292fc9f1ec71202b45f079a2aba51"

  url "https://update.readcube.com/desktop/updates/Papers_Setup_#{version}-#{arch}.zip"
  name "ReadCube Papers"
  desc "Reference management software for researchers"
  homepage "https://www.readcube.com/home"

  livecheck do
    url "https://www.papersapp.com/release-notes/"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
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
