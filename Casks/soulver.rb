cask "soulver" do
  version "3.4.17,202"
  sha256 "865e5e117645ba25df6e7c38e276515b9aef67d6ded1b9429ff75ab58dd68aa0"

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
