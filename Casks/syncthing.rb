cask "syncthing" do
  version "1.18.0-1"
  sha256 "f55eabdf67832ec4a288e73012ca1c988de5098e9dec384cfc20f20b5f1c2634"

  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg",
      verified: "github.com/syncthing/syncthing-macos/"
  name "Syncthing"
  desc "Real time file synchronization software"
  homepage "https://syncthing.net/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*(?:-\d+)?)$/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Syncthing.app"

  zap trash: [
    "~/Library/Application Support/Syncthing-macOS",
    "~/Library/Caches/com.github.xor-gate.syncthing-macosx",
    "~/Library/Cookies/com.github.xor-gate.syncthing-macosx.binarycookies",
    "~/Library/Preferences/com.github.xor-gate.syncthing-macosx.plist",
  ]
end
