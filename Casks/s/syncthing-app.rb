cask "syncthing-app" do
  version "2.1.6-1"
  sha256 "f81d091bb19c42b3bb7a2fda9e80f1794cdb27fadb18b094b0c99b53ef571e2d"

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
