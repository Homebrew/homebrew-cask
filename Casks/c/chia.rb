cask "chia" do
  arch arm: "-arm64"

  version "2.0.1"
  sha256 arm:   "ea621f244968608f7a2a369d6c3086b3f97a8afbc91803952cca6b9eff398503",
         intel: "6d3422c07e2d620bbb4d0c40a7000aa39937e2cb58803863c21a206dffc86818"

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
