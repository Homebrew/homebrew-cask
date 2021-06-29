cask "bisq" do
  version "1.7.0"
  sha256 "0c6234963e63716355a040ed4b25c4e72e0b3449bfae230ce5861d1e38623586"

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
