cask "chia" do
  arch arm: "-arm64"

  version "1.6.1"
  sha256 arm:   "cdc43374a2126d4ec93caf8003561cc10390104e1bde3256dc1cd667dab1e328",
         intel: "2cd660fbd91bd44c2fed4938a5907881e6db803a2b9474238a168c3cccb49cbd"

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
