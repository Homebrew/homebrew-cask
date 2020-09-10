cask "skim" do
  version "1.5.11"
  sha256 "8368b7919051d5d7577231d0d200f6db8b25000a6fc1278acdf656b86a744a0e"

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
