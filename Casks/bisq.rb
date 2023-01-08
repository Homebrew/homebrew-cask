cask "bisq" do
  version "1.9.9"
  sha256 "3e253b8a952d46397ef27d90f0c3f5b86f82dd614d5c49fc8a8329afe1ac098a"

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
