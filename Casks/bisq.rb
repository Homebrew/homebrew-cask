cask "bisq" do
  version "1.9.4"
  sha256 "5a3d5ccbe9dfdfb774ba197c8788985d9cf900cfab5aea38daa5e4d20abd9108"

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
