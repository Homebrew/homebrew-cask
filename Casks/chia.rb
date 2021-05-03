cask "chia" do
  version "1.1.3"
  sha256 "34b698bffce0bd3f0adfaabedd2ff4d00e1f4082e5a48b16a2d34a38a23d5dad"

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
