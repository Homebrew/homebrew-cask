cask "syncthing" do
  version "1.24.0-1"
  sha256 "3a1817e78f93de306f05bf3a8d35baeae6c823b48b81ebcc617efc6d60056070"

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
