cask "bisq" do
  version "1.6.2"
  sha256 "89bea0bd3b66bf2c50d79f8d4bac201c1149acefc0aae1d8150d9f8fbb9e602c"

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
