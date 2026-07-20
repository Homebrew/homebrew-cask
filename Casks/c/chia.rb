cask "chia" do
  arch arm: "-arm64"

  version "2.7.3"
  sha256 arm:   "9ad5a80804c7e8d8662aab2182aa7b39e8ebbf3600c2c19e51c17bb439a93c1d",
         intel: "448aec7ff859c56b6d4b291cb3530ed8a526d3724506d671253929382cb0a737"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
