cask "skim" do
  version "1.7.8"
  sha256 "98088604bfdae6494d6795703934277edfe8df405906ba506dc209f16d1e3ba7"

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg",
      verified: "downloads.sourceforge.net/skim-app/Skim/"
  name "Skim"
  desc "PDF reader and note-taking application"
  homepage "https://skim-app.sourceforge.io/"

  livecheck do
    url "https://skim-app.sourceforge.io/skim.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Skim.app"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.skim-app.skim.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/net.sourceforge.skim-app.skim.help*",
    "~/Library/Caches/net.sourceforge.skim-app.skim",
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
    "~/Library/HTTPStorages/net.sourceforge.skim-app.skim",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
    "~/Library/Saved Application State/net.sourceforge.skim-app.skim.savedState",
  ]
end
