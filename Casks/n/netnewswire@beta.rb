cask "netnewswire@beta" do
  version "7.3b4"
  sha256 "e7083df47ff23372ad3a8a2ac5dba829541e43726377986e4f1fd91d652de332"

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
