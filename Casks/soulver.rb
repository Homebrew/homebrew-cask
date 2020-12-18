cask "soulver" do
  version "3.4.13-165"
  sha256 "e7272829e493a5e0d13c2dce2aeb63ae0c5f4e04248cd2d83debe53488e9ecce"

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
