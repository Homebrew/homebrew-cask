cask "bisq" do
  version "1.5.4"
  sha256 "cecc8f3da9b66a02fb51b3357442498b5dcd5c93f1a08d7904b2d09abb8cb564"

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
