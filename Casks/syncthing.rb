cask "syncthing" do
  version "1.9.0-1"
  sha256 "9af220fe0e817577da0996fc25187449d487a1b265eda74d40f045ebb50a5876"

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
