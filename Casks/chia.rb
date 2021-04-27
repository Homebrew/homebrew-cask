cask "chia" do
  version "1.1.2"
  sha256 "e71c8416b902167b86ae087b9733dd4f7e5fea8a8c075822948f2721d5a27884"

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
