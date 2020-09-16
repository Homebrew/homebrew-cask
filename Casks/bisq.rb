cask "bisq" do
  version "1.3.7"
  sha256 "7a0da69bbafb1af1d01a0a2db304df9558290556425347e24b393fe74fdfe140"

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast "https://github.com/bisq-network/bisq/releases.atom"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  app "Bisq.app"
end
