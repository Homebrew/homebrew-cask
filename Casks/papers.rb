cask "papers" do
  arch arm: "arm64", intel: "x64"

  version "4.35.2224"
  sha256 arm:   "b446dbdca3c2d6eedd9d54524453ced77da5bc4c8632c7c831b62e0df8f3551c",
         intel: "af575370f6920349a0c1305cc6ca4a20a013b38d51d7b722beb53c2b78f49ee3"

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
