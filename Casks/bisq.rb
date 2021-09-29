cask "bisq" do
  version "1.7.4"
  sha256 "a9426b63f5d0882f6deb43d439b497e8d91c977987ed0076a7a9666a9e8bb860"

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
