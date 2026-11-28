cask "netnewswire@beta" do
  version "7.4b1"
  sha256 "c86b192e4d34fd7bbf3c40af984ae5fc1fee8be1a14377bffcee4d11d7535200"

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
