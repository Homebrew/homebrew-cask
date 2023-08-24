cask "chia" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "c9a17fcb333d771099e2155fb3a953efade04360ee1dccad24ec309a6cd4c779",
         intel: "369b52bdc3386e1d320cfdb3ac631c320c933ea8bcf56dce0320e5ac130d0b0f"

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
