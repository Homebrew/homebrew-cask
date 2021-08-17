cask "bisq" do
  version "1.7.2"
  sha256 "cdcec4df053b6e7ad86407f1c13da31898ae52755c3f22d35fe0cf9b06b1ad0e"

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
