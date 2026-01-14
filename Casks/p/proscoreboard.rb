cask "proscoreboard" do
  version "7.0,117440531"
  sha256 "6d529a6dde34b1211f78640674eb186c4e119547648450bda3964af8cb9f8063"

  url "https://renewedvision.com/downloads/ProScoreboard_#{version.csv.first}_#{version.csv.second}.zip"
  name "ProScoreboard"
  desc "Scoreboard software"
  homepage "https://renewedvision.com/proscoreboard/"

  livecheck do
   url "https://www.renewedvision.com/update/scoreboard.php"
   strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

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
