cask "proscoreboard" do
  version "7.1,117506051"
  sha256 "b25d8177e76a795ff2e921637e8590b78980703d1ba8e23728ab0d7823c5374b"

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
