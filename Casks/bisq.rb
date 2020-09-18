cask "bisq" do
  version "1.3.9"
  sha256 "54aa86e09ae7ccac0f82fbe48bb2a9b802a176e0c3ca9def7cae3817a04609ba"

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast "https://github.com/bisq-network/bisq/releases.atom"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  app "Bisq.app"
end
