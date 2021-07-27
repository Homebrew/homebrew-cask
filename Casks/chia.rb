cask "chia" do
  version "1.2.3"
  sha256 "914badd5cc91e1e4383568c9b9cecfc7b53151509e7e349d1740cbcdcc01d57f"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}.dmg",
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
