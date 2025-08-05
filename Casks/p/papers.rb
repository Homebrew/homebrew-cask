cask "papers" do
  arch arm: "arm64", intel: "x64"

  version "4.37.2395"
  sha256 arm:   "f897a69ee2d983a8e737395230a2879c5580abfd658a7386963c7b9fc56b942e",
         intel: "888c302d335095f81e30843f59e081b3b90cd4e1e4b72dbc89f055ae2d548761"

  url "https://update.readcube.com/desktop/updates/Papers_Setup_#{version}-#{arch}.zip"
  name "ReadCube Papers"
  desc "Reference management software for researchers"
  homepage "https://www.readcube.com/home"

  livecheck do
    url "https://s3.amazonaws.com/update.readcube.com/desktop/updates/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Papers.app"

  zap trash: [
    "~/Documents/Papers Library",
    "~/Documents/Papers Styles",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.readcube.papers.sfl*",
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
