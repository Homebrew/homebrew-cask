cask "syncthing" do
  version "1.13.0-1"
  sha256 "12241016ccbf2f6fe3c81aa804f002020fd14e0c53d75d9517b10e903fb4b2f6"

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
  depends_on macos: ">= :yosemite"

  app "Syncthing.app"

  zap trash: [
    "~/Library/Application Support/Syncthing-macOS",
    "~/Library/Caches/com.github.xor-gate.syncthing-macosx",
    "~/Library/Cookies/com.github.xor-gate.syncthing-macosx.binarycookies",
    "~/Library/Preferences/com.github.xor-gate.syncthing-macosx.plist",
  ]
end
