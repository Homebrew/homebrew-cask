cask "chia" do
  arch arm: "-arm64"

  version "2.7.0"
  sha256 arm:   "b650149ba9499f670324cb7df8beb7ee9f882874d34b019d119c8727e7e822fb",
         intel: "7c6c9ec86124f7831af3e764845a7b5c9dfed75336d0a898428c8be9e10a8506"

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
