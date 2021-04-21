cask "chia" do
  version "1.0.5"
  sha256 "d77ae2e3e7187d892a8da1e9be1700d204da46c0e1151f44f3d0ec61adff7524"

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
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/.chia",
  ]
end
