cask "chia" do
  arch arm: "-arm64"

  version "2.2.1"
  sha256 arm:   "e43aa4e879fb56945a5f3721c4469859232ef8ff37cc59869ba5bf554236be3c",
         intel: "4958bd0e09b3bae2736613262b81f9cf1906186f224d2e2355c05aa24504f5d0"

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
