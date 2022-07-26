cask "chia" do
  version "1.5.0"

  arch = Hardware::CPU.intel? ? "" : "-arm64"

  if Hardware::CPU.intel?
    sha256 "0db183c1ffb31badbc77899f2cdafaca33eca5432d2f3f01c4cf21f614b663c5"
  else
    sha256 "d5e18d5571fc5ae5185cdf55d2abae0a41d4f3fade57f15775ac876e7463be0f"
  end

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
