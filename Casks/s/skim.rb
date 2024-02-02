cask "skim" do
  version "1.7"
  sha256 "d670a1317bcfd17b09b353e4edfe08b626582eb64473790013431cc73130d5f1"

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

  app "Skim.app"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/net.sourceforge.skim-app.skim.help*#{version.csv.first}",
    "~/Library/Caches/net.sourceforge.skim-app.skim",
    "~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies",
    "~/Library/HTTPStorages/net.sourceforge.skim-app.skim",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist",
    "~/Library/Preferences/net.sourceforge.skim-app.skim.plist",
  ]
end
