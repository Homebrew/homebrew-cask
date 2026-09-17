cask "syncthing-app" do
  version "2.1.5-1"
  sha256 "50903a2a6221856e1c36e3c5c5ff39e897053d29aa1f685ad576622c93069e88"

  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  name "Syncthing"
  desc "Real time file synchronisation software"
  homepage "https://syncthing.net/"

  livecheck do
    url "https://upgrades.syncthing.net/syncthing-macos/appcast.xml"
    strategy :sparkle do |item|
      item.short_version.delete_prefix("v")
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Syncthing.app"

  zap trash: [
    "~/Library/Application Support/Syncthing-macOS",
    "~/Library/Caches/com.github.xor-gate.syncthing-macosx",
    "~/Library/Cookies/com.github.xor-gate.syncthing-macosx.binarycookies",
    "~/Library/Preferences/com.github.xor-gate.syncthing-macosx.plist",
  ]
end
