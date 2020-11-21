cask "syncthing" do
  version "1.11.1-1"
  sha256 "6d5d0d7f2c91eeff5ee5508d2084a6fbf4e4aeca995dddbefe8f9273c057d525"

  # github.com/syncthing/syncthing-macos/ was verified as official when first introduced to the cask
  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  appcast "https://github.com/syncthing/syncthing-macos/releases.atom"
  name "Syncthing"
  desc "Real time file synchronization software"
  homepage "https://syncthing.net/"

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
