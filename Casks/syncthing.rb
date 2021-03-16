cask "syncthing" do
  version "1.14.0-1"
  sha256 "7050e4b989d91fa4a928e5eb980c0bee06aed812fb94fd70be2b9af840eeb2e4"

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
