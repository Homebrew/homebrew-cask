cask "bisq" do
  version "1.5.5"
  sha256 "f4c16aa6299b479b2c633e1ccd023d52375416472d5087c036fae0cf12bdbba1"

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
