cask "beamer" do
  version "4.3.6"
  sha256 "5cb00e051355089e0b1e02feabfc6e040ac05e6869d34966a13ead67f9b115c4"

  url "https://ushining.softorino.com/shine_uploads/beamermac_#{version}.dmg"
  name "Beamer"
  desc "Desktop casting/streaming app for Apple TV and Chromecast"
  homepage "https://softorino.com/beamer/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=bmrm"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

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

  caveats do
    requires_rosetta
  end
end
