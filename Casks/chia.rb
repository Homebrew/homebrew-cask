cask "chia" do
  arch arm: "-arm64"

  version "1.8.2"
  sha256 arm:   "95766d0c2c54982b80a21d1ef6d2dfef70edf7c0dff2dabdc5d9791d199932f1",
         intel: "a5e09160c8a81a5b088c5f84f274da50c9b38d74bb23690dd9be1cbdcc1b7890"

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
