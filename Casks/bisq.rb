cask "bisq" do
  version "1.5.6"
  sha256 "d25a4e7188d9966436f9badf3f5859badd770a4646b29364f60a09f2cc33ac81"

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
