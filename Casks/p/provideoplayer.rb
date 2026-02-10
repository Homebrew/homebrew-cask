cask "provideoplayer" do
  version "3.8,50855942"
  sha256 "40c9f6397d6a3613906629f8fce70eafa5a342677c5c43436247d027f8f11911"

  url "https://renewedvision.com/downloads/ProVideoPlayer_#{version.csv.first}_#{version.csv.second}.zip"
  name "ProVideoPlayer"
  desc "Presentation software"
  homepage "https://renewedvision.com/provideoplayer/"

  livecheck do
    url "https://www.renewedvision.com/update/PVP#{version.major}.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ProVideoPlayer.app"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.renewedvision.pvp*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.renewedvision.pvp*.sfl*",
    "~/Library/Caches/bugsnag-shared-com.renewedvision.pvp*",
    "~/Library/Caches/com.renewedvision.pvp*",
    "~/Library/HTTPStorages/com.renewedvision.pvp*",
    "~/Library/HTTPStorages/com.renewedvision.pvp*.binarycookies",
    "~/Library/Preferences/com.renewedvision.pvp*.plist",
  ]
end
