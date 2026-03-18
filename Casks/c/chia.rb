cask "chia" do
  arch arm: "-arm64"

  version "2.6.1"
  sha256 arm:   "c5d0860e33a34e71ced47b5cfb963fc8825953bde1c2e3319dd0218ba92adc13",
         intel: "57cff5bd3633b5370effcde615ff4aa250d3b8fdf834df65ef404a874177430c"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
