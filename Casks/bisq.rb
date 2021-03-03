cask "bisq" do
  version "1.5.9"
  sha256 "420d02bcede1f2ae1c0fcd3053a11e9993030e3da3ab2666b7e451147f453a2f"

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
