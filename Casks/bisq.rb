cask "bisq" do
  version "1.9.1"
  sha256 "1eadf845e638ea9fb703c4d29c2e7320e252df112a960cd49aeab311327ba86c"

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
