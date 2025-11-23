cask "beamer" do
  version "4.2.0"
  sha256 "6bd4a6c84e10ce35c5d641f921d875120a2acfb9e58300ee47d63bbdeb8f547a"

  url "https://ushining.softorino.com/shine_uploads/beamermac_#{version}.dmg"
  name "Beamer"
  desc "Desktop casting/streaming app for Apple TV and Chromecast"
  homepage "https://softorino.com/beamer/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=bmrm"
    strategy :sparkle
  end

  auto_updates true

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
