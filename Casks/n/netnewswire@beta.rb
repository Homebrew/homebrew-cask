cask "netnewswire@beta" do
  version "7.1.3b4"
  sha256 "75db93ac9e11c0cfe437af2033bb05c0bd597f3b746e8df5f4c89ad19a8a9f38"

  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip",
      verified: "github.com/brentsimmons/NetNewsWire/"
  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://ranchero.com/netnewswire/"

  livecheck do
    url "https://ranchero.com/downloads/netnewswire-beta.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "netnewswire"
  depends_on macos: :sequoia

  app "NetNewsWire.app"

  zap trash: [
    "~/Library/Application Scripts/com.ranchero.NetNewsWire-Evergreen.Subscribe-to-Feed",
    "~/Library/Application Support/NetNewsWire",
    "~/Library/Caches/com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Containers/com.ranchero.NetNewsWire-Evergreen.Subscribe-to-Feed",
    "~/Library/Preferences/com.ranchero.NetNewsWire-Evergreen.plist",
    "~/Library/Saved Application State/com.ranchero.NetNewsWire-Evergreen.savedState",
    "~/Library/WebKit/com.ranchero.NetNewsWire-Evergreen",
  ]
end
