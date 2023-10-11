cask "chia" do
  arch arm: "-arm64"

  version "2.1.1"
  sha256 arm:   "3e2c4e2a24d815de3255cdd155b849aa45d3218b46de210bf84f6632376a04eb",
         intel: "15d99047547401da20b9d52a18ae149f15602a2da8e6486aebb73abbce91a0f5"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Chia.app"

  zap trash: [
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
    "~/.chia",
  ]
end
