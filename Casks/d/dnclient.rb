cask "dnclient" do
  version "0.9.0"
  sha256 "c9f372af6741eaf9c53c1ab94e9829ddd1bdacfc8ed2fbae8024f76a1d638c31"

  url "https://dl.defined.net/c7546109/v#{version}/macos/DNClient-Desktop.dmg"
  name "DNClient"
  desc "Peer-to-peer VPN client for managed nebula networks"
  homepage "https://www.defined.net/"

  livecheck do
    url "https://api.defined.net/v1/downloads"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json.dig("data", "dnclient")&.filter_map do |version, downloads|
        next if version == "latest"
        next unless downloads.key?("macos-universal-desktop")
        next unless version.match?(regex)

        version[regex, 1]
      end
    end
  end

  depends_on macos: ">= :ventura"

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
