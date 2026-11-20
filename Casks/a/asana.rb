cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.11.1"
  sha256 arm:   "7694218d4adedcd05dcf4e195483ca15c2b78069af32958786c7f8894d10ef04",
         intel: "51b09bdb5cf2800476dcb1bc8cf984d2933590eaf39f44f6798e09f8dd21c2f1"

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
