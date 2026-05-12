cask "dnclient" do
  version "0.9.3,e2600f2e"
  sha256 "5938d57a96044f92c6999cec94e567408f2ff5ff6b8b24f5a4a9793c9b006eb7"

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
