cask "beamer" do
  version "4.1.17"
  sha256 "3f1b9fec947cbc91ad8b46344e57fb39db8d06147e077f178db7f939703dc763"

  url "https://ushining.softorino.com/shine_uploads/beamermac_#{version}.dmg"
  name "Beamer"
  desc "Desktop casting/streaming app for Apple TV and Chromecast"
  homepage "https://softorino.com/beamer/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=bmrm"
    strategy :sparkle
  end

  app "Beamer.app"

  zap trash: [
    "~/Library/Application Support/com.tupil.beamer",
    "~/Library/Caches/com.tupil.beamer",
    "~/Library/HTTPStorages/com.tupil.beamer",
    "~/Library/HTTPStorages/com.tupil.beamer.binarycookies",
    "~/Library/Logs/Beamer",
    "~/Library/Preferences/com.tupil.beamer.plist",
    "~/Library/Saved Application State/com.tupil.beamer.savedState",
  ]
end
