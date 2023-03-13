cask "chia" do
  arch arm: "-arm64"

  version "1.7.0"
  sha256 arm:   "fa5711369ff7185d5f45abfdc938a4fd93e29729713309ec658cae5b16f1bf68",
         intel: "29489cdcef2099ee62e5c075cb67c84736d957ee23c16d875ef79d5e69e05c2e"

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
