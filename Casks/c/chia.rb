cask "chia" do
  arch arm: "-arm64"

  version "2.7.1"
  sha256 arm:   "5fb0ed55b33314a307786a16b6d7f82b2ad794e1d4fdb4ef4ab86fec279fabf7",
         intel: "9c23414dcf6e835d8cf88273660227142040d3a6d3b890faa723423ac49f5dee"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
