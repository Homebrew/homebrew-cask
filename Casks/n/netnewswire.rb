cask "netnewswire" do
  on_sequoia :or_older do
    on_monterey :or_older do
      version "6.1.4"
      sha256 "74d75b9e25c6adef06dbf01cd060771872769357448879809535f77493840bbb"
    end

    on_ventura :or_newer do
      version "6.2.1"
      sha256 "16dd22ef68104ac4f885c61c0a6a944bc2cdce6c5b95cb8ab29ee1c894c86729"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_tahoe :or_newer do
    version "7.0"
    sha256 "d723e062aeedd9b4d70fb3c0f47a81f309e4077cf4e3928f3068da0e44bc91c8"

    livecheck do
      url "https://ranchero.com/downloads/netnewswire-release.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://github.com/Ranchero-Software/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip",
      verified: "github.com/Ranchero-Software/NetNewsWire/"
  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://netnewswire.com/"

  auto_updates true
  conflicts_with cask: "netnewswire@beta"

  app "NetNewsWire.app"

  zap trash: [
    "~/Library/Application Scripts/com.ranchero.NetNewsWire-Evergreen*",
    "~/Library/Application Scripts/group.com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Application Support/NetNewsWire",
    "~/Library/Caches/com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Containers/com.ranchero.NetNewsWire-Evergreen*",
    "~/Library/Group Containers/group.com.ranchero.NetNewsWire-Evergreen",
    "~/Library/Preferences/com.ranchero.NetNewsWire-Evergreen.plist",
    "~/Library/Saved Application State/com.ranchero.NetNewsWire-Evergreen.savedState",
    "~/Library/WebKit/com.ranchero.NetNewsWire-Evergreen",
  ]
end
