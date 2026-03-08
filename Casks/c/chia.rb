cask "chia" do
  arch arm: "-arm64"

  version "2.6.0"
  sha256 arm:   "a55b4b56ec53ec23b44bbff22486503b8e31d750a72bbd7049ea98e23870c90d",
         intel: "6da5a6d1c140350b6dd14fc16c51190dfd8e85586356ee9fe8336bb5a3648c72"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
