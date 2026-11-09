cask "skim" do
  version "1.7.19"
  sha256 "559aadf86a60661517ed523289f0f81cb4e859ccdbb54191cc64d4be3d7781dc"

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  name "Skim"
  desc "PDF reader and note-taking application"
  homepage "https://skim-app.sourceforge.io/"

  livecheck do
    url "https://skim-app.sourceforge.io/skim.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Skim.app"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: [
    "~/Library/Application Scripts/net.sourceforge.skim-app.skim.quicklook-preview",
    "~/Library/Application Scripts/net.sourceforge.skim-app.skim.quicklook-thumbnails",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.skim-app.skim.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/net.sourceforge.skim-app.skim.help*",
    "~/Library/Caches/net.sourceforge.skim-app.skim",
    "~/Library/Containers/net.sourceforge.skim-app.skim.quicklook-preview",
    "~/Library/Containers/net.sourceforge.skim-app.skim.quicklook-thumbnails",
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
    "~/Library/HTTPStorages/net.sourceforge.skim-app.skim",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
    "~/Library/Saved Application State/net.sourceforge.skim-app.skim.savedState",
  ]
end
