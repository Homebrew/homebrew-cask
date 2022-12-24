cask "bisq" do
  version "1.9.8"
  sha256 "5106eb90ff2b536fb06a2605ba24e712844b342b28b83e93a74eb4566a6813ab"

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
