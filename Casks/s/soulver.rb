cask "soulver" do
  version "3.14.4,492"
  sha256 "43f171e6219741fe24292e7b49a06fa8fa18744ed045851d1fb72a48d270d1bd"

  url "https://soulver.app/mac/sparkle/soulver-#{version.csv.first}-#{version.csv.second}.zip"
  name "Soulver"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  livecheck do
    url "https://soulver.app/mac/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Soulver #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/app.soulver.mac.QuicklookInSpotlight",
    "~/Library/Application Support/app.soulver.mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.soulver.mac.sfl*",
    "~/Library/Application Support/Soulver #{version.major}",
    "~/Library/Caches/app.soulver.mac",
    "~/Library/Containers/app.soulver.mac.QuicklookInSpotlight",
    "~/Library/Group Containers/group.app.soulver",
    "~/Library/HTTPStorages/app.soulver.mac.binarycookies",
    "~/Library/Preferences/app.soulver.mac.plist",
    "~/Library/Saved Application State/app.soulver.mac.savedState",
  ]
end
