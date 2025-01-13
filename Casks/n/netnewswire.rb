cask "netnewswire" do
  on_monterey :or_older do
    version "6.1.4"
    sha256 "74d75b9e25c6adef06dbf01cd060771872769357448879809535f77493840bbb"

    url "https://github.com/Ranchero-Software/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip",
        verified: "github.com/Ranchero-Software/NetNewsWire/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "6.1.9"
    sha256 "c06d7f129b0ad423170d333f5a5345041515aba2144a3d06124a98e40cdffe5b"

    url "https://github.com/Ranchero-Software/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip",
        verified: "github.com/Ranchero-Software/NetNewsWire/"

    livecheck do
      url "https://ranchero.com/downloads/netnewswire-release.xml"
      strategy :sparkle, &:short_version
    end
  end

  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://netnewswire.com/"

  auto_updates true
  conflicts_with cask: "netnewswire@beta"
  depends_on macos: ">= :catalina"

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
