cask "bisq" do
  version "1.9.6"
  sha256 "4a0b31b4c372cf4a4979ec44303936d754e5edfcff8bd92a12f5660ef70afa7c"

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
