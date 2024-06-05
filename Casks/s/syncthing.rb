cask "syncthing" do
  version "1.27.8-1"
  sha256 "7374b7ab4523790745f535350e18e8d8e75f5b79f782d0570410fb5567ae6792"

  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg",
      verified: "github.com/syncthing/syncthing-macos/"
  name "Syncthing"
  desc "Real time file synchronisation software"
  homepage "https://syncthing.net/"

  livecheck do
    url :url
    regex(/v?(\d+(?:[\.\-]\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Syncthing.app"

  zap trash: [
    "~/Library/Application Support/Syncthing-macOS",
    "~/Library/Caches/com.github.xor-gate.syncthing-macosx",
    "~/Library/Cookies/com.github.xor-gate.syncthing-macosx.binarycookies",
    "~/Library/Preferences/com.github.xor-gate.syncthing-macosx.plist",
  ]
end
