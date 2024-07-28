cask "pomello" do
  version "0.10.17"
  sha256 :no_check

  url "https://pomelloapp.com/download/mac/latest"
  name "Pomello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Pomello.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinynudge.pomello.*",
    "~/Library/Application Support/Pomello",
    "~/Library/Caches/com.tinynudge.pomello",
    "~/Library/Caches/com.tinynudge.pomello.ShipIt",
    "~/Library/HTTPStorages/com.tinynudge.pomello",
    "~/Library/Preferences/com.tinynudge.pomello.plist",
    "~/Library/Saved Application State/com.tinynudge.pomello.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
