cask "chia" do
  arch arm: "-arm64"

  version "1.7.1"
  sha256 arm:   "276a8b22a3f904c7c93f6e69231fac15b2a80550dad3c9a7a490767773888215",
         intel: "1e0a8ee0d459ab47d1997691a49dd52c4d54c26f9f13fd105c0de8aebfadd539"

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
