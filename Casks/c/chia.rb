cask "chia" do
  arch arm: "-arm64"

  version "2.3.0"
  sha256 arm:   "a43c2876027febca803976575574ea0c032670985c1e3f810ad6080f25c7ad8d",
         intel: "7cbe3ff91a5e0684b827516dc049208ce4b71796118130d315a62ef9cd532ac3"

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
