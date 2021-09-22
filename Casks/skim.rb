cask "skim" do
  version "1.6.5,135"
  sha256 "f3994073504679cf6705435b9f8208092e1ae1b897c07ab462fb3d62a70fa5d7"

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
    "~/Library/Caches/net.sourceforge.skim-app.skim",
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
  ]
end
