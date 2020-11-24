cask "soulver" do
  version "3.4.12-162"
  sha256 "ffca884751e5ef44ff8bbbdfa1c926fd0b4e80723774713e63e9bc010d72aa8c"

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast "https://soulver.app/mac/sparkle/appcast.xml"
  name "Soulver"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Soulver #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Soulver 3",
    "~/Library/Application Support/app.soulver.mac",
    "~/Library/Preferences/app.soulver.mac.plist",
    "~/Library/Caches/app.soulver.mac",
    "~/Library/Containers/app.soulver.mac.QuicklookInSpotlight",
    "~/Library/Group Containers/group.app.soulver",
    "~/Library/HTTPStorages/app.soulver.mac.binarycookies",
    "~/Library/Application Scripts/app.soulver.mac.QuicklookInSpotlight",
    "~/Library/Saved Application State/app.soulver.mac.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.soulver.mac.sfl2",
  ]
end
