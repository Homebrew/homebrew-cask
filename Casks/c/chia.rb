cask "chia" do
  arch arm: "-arm64"

  version "2.5.2"
  sha256 arm:   "d546668ae2af4d879eab6a494c23581c84060f571529918275249642fddbca1d",
         intel: "50d63c729a2b0778af860bf12bfae1c0971be0633a01f5d34cf4f42b89887e1f"

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
