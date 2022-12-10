cask "syncthing" do
  version "1.22.2-1"
  sha256 "de63990c05de2db8f3259b6533bbe69636831b59c6bc6fc360df5a57aa85c975"

  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg",
      verified: "github.com/syncthing/syncthing-macos/"
  name "Syncthing"
  desc "Real time file synchronization software"
  homepage "https://syncthing.net/"

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
