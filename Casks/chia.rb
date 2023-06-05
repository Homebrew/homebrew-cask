cask "chia" do
  arch arm: "-arm64"

  version "1.8.1"
  sha256 arm:   "a2965dee3d7532445f5c99d6aec161cb6b2860e355513a0c22b3b773c54edd7f",
         intel: "7ccc92faeb2a0f342c0c477012aa644613ae873f7acb045bafb4767436c3ca1f"

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
