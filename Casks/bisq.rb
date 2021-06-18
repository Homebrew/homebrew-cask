cask "bisq" do
  version "1.6.5"
  sha256 "b881efeb4e5aa6a69c6d481deb0a37498e836e7b6909774d3002c77f37d4fa06"

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
