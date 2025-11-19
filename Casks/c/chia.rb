cask "chia" do
  arch arm: "-arm64"

  version "2.5.7"
  sha256 arm:   "173a0a4882bafcf9bfa6cbc51847c8b393364a20f1b2de820759e9fc8ef576aa",
         intel: "2bbcaa1702ddd10d4bf6741a7ecb083ce4fed2c33f68c3dae734a32927831d99"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
