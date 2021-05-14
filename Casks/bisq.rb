cask "bisq" do
  version "1.6.4"
  sha256 "a911edd2a12a8f07e3a164111820952df5045bdb00ec2bb265d0998a5e6d45e8"

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
