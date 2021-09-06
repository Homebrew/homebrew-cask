cask "bisq" do
  version "1.7.3"
  sha256 "027b290b3ae9b41cb65fe06eb1f3e3991bea2873991cd782073a2a4ce36f7447"

  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg",
      verified: "github.com/bisq-network/bisq/"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bisq.app"
end
