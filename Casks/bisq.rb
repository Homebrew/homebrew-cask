cask "bisq" do
  version "1.6.1"
  sha256 "179ea51cb44dd9693fa0ae6f5941b925c4fa67ecf4ada61c8aca7576eaf1d0b6"

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
