cask "soulver" do
  version "3.7.2,368"
  sha256 "0efce65f1c60f626e4a0488a7560968d2f1e16dc6fbd84f27e4788d63a2f9aec"

  url "https://soulver.app/mac/sparkle/soulver-#{version.csv.first}-#{version.csv.second}.zip"
  name "Soulver"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  livecheck do
    url "https://soulver.app/mac/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Soulver #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/app.soulver.mac.QuicklookInSpotlight",
    "~/Library/Application Support/app.soulver.mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.soulver.mac.sfl2",
    "~/Library/Application Support/Soulver #{version.major}",
    "~/Library/Caches/app.soulver.mac",
    "~/Library/Containers/app.soulver.mac.QuicklookInSpotlight",
    "~/Library/Group Containers/group.app.soulver",
    "~/Library/HTTPStorages/app.soulver.mac.binarycookies",
    "~/Library/Preferences/app.soulver.mac.plist",
    "~/Library/Saved Application State/app.soulver.mac.savedState",
  ]
end
