cask "dnclient-server" do
  version "1.0.0"
  sha256 "b57fabffbaef16a5c5c47cb14c1571c4440367aec06ebec5af41139c737b12e8"

  url "https://dl.defined.net/stable/binaries/dnclient/v#{version}/macos/DNClient-Server.dmg"
  name "DNClient Server"
  desc "Peer-to-peer VPN client daemon for managed nebula networks"
  homepage "https://www.defined.net/"

  livecheck do
    url "https://api.defined.net/v1/downloads"
    strategy :json do |json|
      json.dig("data", "versionInfo", "latest", "dnclient")
    end
  end

  depends_on macos: :ventura

  binary "dnclient"

  zap trash: [
    "/etc/defined",
    "/Library/LaunchDaemons/dnclient.plist",
  ]
end
