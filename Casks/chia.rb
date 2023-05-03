cask "chia" do
  arch arm: "-arm64"

  version "1.8.0"
  sha256 arm:   "0a289c62d15c97c9d23c015751d344900f85a91771489c5996f25e6452420f18",
         intel: "91cc64599dd5febec62e7a08db9cb5927744da268ae4ce28a192e490911a4ba0"

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
