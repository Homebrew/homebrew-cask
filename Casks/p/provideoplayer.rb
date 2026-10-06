cask "provideoplayer" do
  version "3.9,50921506"
  sha256 "ce29eea5aa768b0f351703d6b63145e0d0a720b7b3e1813f7805f689cf5ab6d3"

  url "https://renewedvision.com/downloads/ProVideoPlayer_#{version.csv.first}_#{version.csv.second}.zip"
  name "ProVideoPlayer"
  desc "Presentation software"
  homepage "https://renewedvision.com/provideoplayer/"

  livecheck do
    url "https://www.renewedvision.com/update/PVP#{version.major}.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

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
