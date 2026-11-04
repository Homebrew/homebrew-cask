cask "netnewswire@beta" do
  version "7.3b3"
  sha256 "96712f603cc2050d3b8c8d8e318bb6d668762d003c153e31ee31a4da8ff09621"

  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
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
    "~/Library/Application Scripts/group.com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Application Support/NetNewsWire",
    "~/Library/Caches/com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Containers/com.ranchero.NetNewsWire-Evergreen.Subscribe-to-Feed",
    "~/Library/Group Containers/group.com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Preferences/com.ranchero.NetNewsWire-Evergreen.plist",
    "~/Library/Saved Application State/com.ranchero.NetNewsWire-Evergreen.savedState",
    "~/Library/WebKit/com.ranchero.NetNewsWire-Evergreen",
  ]
end
