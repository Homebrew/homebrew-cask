cask "bisq" do
  version "1.8.4"
  sha256 "70e0e5a843092b5b2d0679a4179b3a6da4adea5ab3bb8d3f594cc8c395dffb36"

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
