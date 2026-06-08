cask "proscoreboard" do
  version "7.2,117571588"
  sha256 "f0626ef2c842d142adbd17285033ca53f01981cadf59e113baf03c92d9010296"

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

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.renewedvision.Scoreboard",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.renewedvision.scoreboard.sfl*",
    "~/Library/Caches/bugsnag-shared-com.renewedvision.Scoreboard",
    "~/Library/Caches/com.renewedvision.Scoreboard",
    "~/Library/HTTPStorages/com.renewedvision.Scoreboard*",
    "~/Library/Preferences/com.renewedvision.Scoreboard*",
  ]
end
