cask "soulver" do
  version "3.4.18,207"
  sha256 "2175796fe42c4faa31ac099f006f6479c94c3532cb6f383a6cee710807b434fe"

  url "https://soulver.app/mac/sparkle/soulver-#{version.before_comma}-#{version.after_comma}.zip"
  name "Soulver"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  livecheck do
    url "https://soulver.app/mac/sparkle/appcast.xml"
    strategy :sparkle
  end

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
