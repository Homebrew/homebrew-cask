cask "bisq" do
  version "1.8.0"
  sha256 "440231fc4e493fd31c6a1909b39e579f7f967d4cbaaa8cc8167c83919e990638"

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
