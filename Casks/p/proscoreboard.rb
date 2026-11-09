cask "proscoreboard" do
  version "8.0,134217732"
  sha256 "46a9c37b38242910b71207cfd7e57557525594fbdb0295422049fd91a918847a"

  url "https://renewedvision.com/downloads/ProScoreboard_#{version.csv.first}_#{version.csv.second}.zip"
  name "ProScoreboard"
  desc "Scoreboard software"
  homepage "https://renewedvision.com/proscoreboard/"

  livecheck do
    url "https://www.renewedvision.com/update/scoreboard.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ProScoreboard.app"

  uninstall quit: "com.renewedvision.Scoreboard"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.renewedvision.Scoreboard",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.renewedvision.scoreboard.sfl*",
    "~/Library/Caches/bugsnag-shared-com.renewedvision.Scoreboard",
    "~/Library/Caches/com.renewedvision.Scoreboard",
    "~/Library/HTTPStorages/com.renewedvision.Scoreboard*",
    "~/Library/Preferences/com.renewedvision.Scoreboard*",
  ]
end
