cask "chia" do
  arch arm: "-arm64"

  version "2.5.5"
  sha256 arm:   "5b62fa7746a4b663b03e6d6442f3e965e3d1b776aa1c019c8804742e56081c35",
         intel: "8716c60f42ba8d4c2d72f224995bc6daf59e92610253bccef74f92732dd35fda"

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
