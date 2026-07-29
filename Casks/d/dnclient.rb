cask "dnclient" do
  version "0.9.6,10c23c2d"
  sha256 "a9c8ef704b1219493434d294536925dcd8a90d300f18c1b4b775026a49806507"

  url "https://dl.defined.net/#{version.csv.second}/v#{version.csv.first}/macos/DNClient-Desktop.dmg"
  name "DNClient"
  desc "Peer-to-peer VPN client for managed nebula networks"
  homepage "https://www.defined.net/"

  livecheck do
    url "https://api.defined.net/v1/downloads"
    regex(%r{/(\h+)/v?(\d+(?:\.\d+)+)/macos/DNClient-Desktop\.dmg}i)
    strategy :json do |json, regex|
      json.dig("data", "dnclient")&.map do |_, release|
        match = release["macos-universal-desktop"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
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
