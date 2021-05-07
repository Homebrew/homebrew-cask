cask "syncthing" do
  version "1.16.1-1"
  sha256 "208ad952778ad0682e58bd407d1cfa21c2e4fe7a9e53c98c4cda60e0c2343d2e"

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
