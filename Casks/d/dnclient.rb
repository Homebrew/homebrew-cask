cask "dnclient" do
  version "1.0.1"
  sha256 "043d9da67f13d15847c1b0bc88301f9297557c4e9ae63e982cc7d7d8b24af5ab"

  url "https://dl.defined.net/stable/binaries/dnclient/v#{version}/macos/DNClient-Desktop.dmg"
  name "DNClient"
  desc "Peer-to-peer VPN client for managed nebula networks"
  homepage "https://www.defined.net/"

  livecheck do
    url "https://api.defined.net/v1/downloads"
    strategy :json do |json|
      json.dig("data", "versionInfo", "latest", "dnclient")
    end
  end

  depends_on macos: :ventura

  app "DNClient Desktop.app"

  zap trash: [
    "/Library/Application Support/DefinedNet",
    "~/Library/Caches/dnclient-desktop",
    "~/Library/Caches/net.defined.dnclient-desktop",
    "~/Library/Preferences/dnclient-desktop.plist",
    "~/Library/Preferences/net.defined.dnclient-desktop.plist",
    "~/Library/WebKit/dnclient-desktop",
    "~/Library/WebKit/net.defined.dnclient-desktop",
  ]
end
