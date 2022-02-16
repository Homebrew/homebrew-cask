cask "skim" do
  version "1.6.8,138"
  sha256 "b65e39201de98cc72eb3758dfa075011143a99e9a4ffb7d95c31608637ec910c"

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
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
  ]
end
