cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.10.6"
  sha256 arm:   "bd1580f8096a609aef62a5c0c7f65aeca892b92c5d8296337121d8dfc2ae211f",
         intel: "cc057911a1e84658d620ab8e3598570a3a089118a795e8482b097f5b083d1ef4"

  url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/v#{version}/Asana-darwin-#{arch}-#{version}.zip"
  name "Asana"
  desc "Manage team projects and tasks"
  homepage "https://asana.com/"

  livecheck do
    url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.asana.sfl*",
    "~/Library/Caches/com.electron.asana",
    "~/Library/Caches/com.electron.asana.ShipIt",
    "~/Library/HTTPStorages/com.electron.asana",
    "~/Library/Logs/Asana",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState",
  ]
end
