cask "bisq" do
  version "1.7.1"
  sha256 "cceed124397626e6125b8b706452e45f701fbbdc107d6018d48ec6bc12654b8e"

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
