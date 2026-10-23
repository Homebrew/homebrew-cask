cask "dnclient-server" do
  version "0.9.10,cc4e1ce7"
  sha256 "ac963eec73539ae0d0c6ba6d6af8c98430619bb8187609a7725a4de76340162d"

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

  caveats <<~EOS
    If dnclient runs as a service, restart it after upgrading so it runs the new version:
      sudo "#{HOMEBREW_PREFIX}/bin/dnclient" stop
      sudo "#{HOMEBREW_PREFIX}/bin/dnclient" start
  EOS
end
