cask "bisq" do
  version "1.4.2"
  sha256 "c2656ae74e52aae5e3637e18a11be8e2739ed3d79c4dd74df64cbefee202a28b"

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast "https://github.com/bisq-network/bisq/releases.atom"
  name "Bisq"
  desc "Decentralized bitcoin exchange network"
  homepage "https://bisq.network/"

  app "Bisq.app"
end
