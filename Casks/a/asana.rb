cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.10.4"
  sha256 arm:   "b7dc06d5703d98d0aa24a34325969a844bca83463d73374a327d7ad34042b451",
         intel: "f513aa963c4b6891d9e314d15f95854a9778e41c4bd75a657fcd7508257ba2a8"

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
