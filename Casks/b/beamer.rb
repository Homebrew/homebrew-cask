cask "beamer" do
  version "4.3.7"
  sha256 "cf4e4eef197433f8a38ef241b2cb6a3d30294e3626a6334efd4230d9c14fddb6"

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

  uninstall quit: "com.softorino.beamer"

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
