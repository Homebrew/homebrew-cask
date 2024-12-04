cask "syncthing" do
  version "1.28.1-1"
  sha256 "7db5a4440f6afea58b43555176f523da8b97a9700e82c7c46d7b89c9e862b1b7"

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
