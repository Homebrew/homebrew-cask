cask "chia" do
  arch arm: "-arm64"

  version "2.5.0"
  sha256 arm:   "7fde5a658675b2b631a4e1b9befccc1af3dbd9f38d1d43965586982d9880e645",
         intel: "ffb92da7134f7371a42b3b054aa0dc28d43ce3e3f15c192ba00411555389c881"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
