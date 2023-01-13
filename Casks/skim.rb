cask "skim" do
  version "1.6.14,144"
  sha256 "c545725c6df315c1e5b4986c59120a93de2571ea13f9f5f4d75fc4aa3c9e9f2e"

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version.csv.first}/Skim-#{version.csv.first}.dmg",
      verified: "downloads.sourceforge.net/skim-app/"
  name "Skim"
  desc "PDF reader and note-taking application"
  homepage "https://skim-app.sourceforge.io/"

  livecheck do
    url "https://skim-app.sourceforge.io/skim.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Skim.app"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: [
    "~/Library/Caches/net.sourceforge.skim-app.skim",
    "~/Library/Caches/com.apple.helpd/Generated/net.sourceforge.skim-app.skim.help*#{version.csv.first}",
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
    "~/Library/HTTPStorages/net.sourceforge.skim-app.skim",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
  ]
end
