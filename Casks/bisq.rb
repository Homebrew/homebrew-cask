cask "bisq" do
  version "1.5.2"
  sha256 "a1a9779d1f0c4099fcb8ed103b79eb1f3df99bb3cdcf4cf3405e937f86231165"

  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg",
      verified: "github.com/bisq-network/bisq/"
  appcast "https://github.com/bisq-network/bisq/releases.atom"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  app "Bisq.app"
end
