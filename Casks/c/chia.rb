cask "chia" do
  arch arm: "-arm64"

  version "2.4.0"
  sha256 arm:   "90e6fd6394bc6c5af4323e6f9bf336350a0e7514cd03eeca407aeacf4fa17d90",
         intel: "8b9552745c45eb2e141637efb723416f14619f9ed2c7b229aaf588f8ce6042fa"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Chia.app"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
