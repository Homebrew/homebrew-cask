cask "proscoreboard" do
  version "7.3.1,117637377"
  sha256 "00b177a9e818bdf41812e64113d03a301961e25a582d0652c34891d0dc5ca5ae"

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
