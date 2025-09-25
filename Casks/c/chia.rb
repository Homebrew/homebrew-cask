cask "chia" do
  arch arm: "-arm64"

  version "2.5.6"
  sha256 arm:   "8d461022f9a30dd746d2a1d9f8c8a3b7b80b7c38cfbe82282ef1a97a4063a02a",
         intel: "2e6fa626db86dec8e2214e8f45252856eec2b69aec4708534972b99d5c918cb7"

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
