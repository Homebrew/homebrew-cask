cask "dnclient-server" do
  version "0.9.5,764f2278"
  sha256 "fd7df9b98105c83fd1b7fe1c4d5a980b7127fe8f74c972b2b75d7c8dc8597692"

  url "https://dl.defined.net/#{version.csv.second}/v#{version.csv.first}/macos/DNClient-Server.dmg"
  name "DNClient Server"
  desc "Peer-to-peer VPN client daemon for managed nebula networks"
  homepage "https://www.defined.net/"

  livecheck do
    url "https://api.defined.net/v1/downloads"
    regex(%r{/(\h+)/v?(\d+(?:\.\d+)+)/macos/DNClient-Server\.dmg}i)
    strategy :json do |json, regex|
      json.dig("data", "dnclient")&.filter_map do |_, release|
        match = release["macos-universal-server-dmg"]&.match(regex)
        next unless match

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: :ventura

  binary "dnclient"

  zap trash: [
    "/etc/defined",
    "/Library/LaunchDaemons/dnclient.plist",
  ]
end
