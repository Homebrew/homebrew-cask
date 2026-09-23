cask "dnclient-server" do
  version "0.9.9,8c94ab95"
  sha256 "c2cbee548d9e42af150fa0372737133df01df74fcc011e783c4bd029a9ccac17"

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
