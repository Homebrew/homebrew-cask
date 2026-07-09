cask "chia" do
  arch arm: "-arm64"

  version "2.7.2"
  sha256 arm:   "7cd036be4a06106852b41d12236b224c0137fadb0f51810e7f792a438e30779c",
         intel: "45eafd69b485d587d8d048ada74b4a8c60f79661ac49fa65b37ea7c7d274d8be"

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
