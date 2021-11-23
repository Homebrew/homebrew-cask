cask "bisq" do
  version "1.7.5"
  sha256 "7e87b6538bacf04b9fb282713e27760f6ec9370d21f53025808e3ab88d05a190"

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
