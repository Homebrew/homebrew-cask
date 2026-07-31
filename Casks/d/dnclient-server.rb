cask "dnclient-server" do
  version "0.9.7,56c0d31f"
  sha256 "c6d8b708b44d0482930c49a373366487ac7fbd4cdd7b4adc3fb22ac3a82fd961"

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
