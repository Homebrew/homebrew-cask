cask "chia" do
  version "1.3.3"

  arch = Hardware::CPU.intel? ? "" : "-arm64"

  if Hardware::CPU.intel?
    sha256 "ded52697dd8913de7634b7885841acdab7fcc18c4262339a861cbbf19444137b"
  else
    sha256 "70ab61c98692516678c6448c43bb83ea670b811b053c83a35d0120bac3f0e310"
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
