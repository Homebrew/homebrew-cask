cask "bisq" do
  version "1.5.1"
  sha256 "31c44e76c3e1a8663bbfa32d21ab80be58b6fed01cac997a24ef86f3b969d575"

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast "https://github.com/bisq-network/bisq/releases.atom"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  app "Bisq.app"
end
