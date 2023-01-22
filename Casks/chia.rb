cask "chia" do
  arch arm: "-arm64"

  version "1.6.2"
  sha256 arm:   "d186830f663f263fe323ebe54aa7d6b0a4cc855db6c4e94712900e1c440bd692",
         intel: "3d6d3c784490c1bb2bda1cdd00e714c993e1778d147eede36b574d6e248d0a50"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Chia.app"

  zap trash: [
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
    "~/.chia",
  ]
end
