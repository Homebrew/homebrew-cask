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

  depends_on macos: ">= :catalina"

  app "Beamer.app"

  zap trash: [
        "~/Library/Application Support/Beamer",
        "~/Library/Caches/com.softorino.beamer",
        "~/Library/HTTPStorages/com.softorino.beamer",
        "~/Library/Logs/Beamer",
        "~/Library/Preferences/com.softorino.beamer.plist",
        "~/Library/Saved Application State/com.softorino.beamer.savedState",
      ],
      rmdir: "/Users/Shared/Beamer"
end
