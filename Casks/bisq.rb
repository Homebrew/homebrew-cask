cask "bisq" do
  version "1.5.0"
  sha256 "1e9a3cc54679e4556f2238527cd50a56dc18aa854d99e8f79a6eba660d10a3e2"

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast "https://github.com/bisq-network/bisq/releases.atom"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  app "Bisq.app"
end
