cask "chia" do
  arch arm: "-arm64"

  version "2.1.0"
  sha256 arm:   "a9ff794b992e341711245376d6dafa87c7a54034cb9640e3a8224c3f62790657",
         intel: "53fcb86e0bad8e0e0ab61d9aeafe893af8ef9a6ea039efdcf5f590b968708b22"

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
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
    "~/.chia",
  ]
end
