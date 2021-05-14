cask "skim" do
  version "1.6.3,133"
  sha256 "1dffe6565fa9b2dd68439c347fd9b02b2ea30ef5875328e1bd3f732827fa4fe6"

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version.before_comma}/Skim-#{version.before_comma}.dmg",
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
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Caches/net.sourceforge.skim-app.skim",
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
  ]
end
