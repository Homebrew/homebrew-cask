cask "skim" do
  version "1.5.12"
  sha256 "25d6ed5ffd4b7ddeeaf7cf737b2b73960e5278b18699d597e68d48cdda022fc1"

  # downloads.sourceforge.net/skim-app/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast "https://skim-app.sourceforge.io/skim.xml"
  name "Skim"
  desc "PDF reader and note-taking application"
  homepage "https://skim-app.sourceforge.io/"

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
