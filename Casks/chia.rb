cask "chia" do
  arch arm: "-arm64"

  version "1.6.0"
  sha256 arm:   "20826517fc6458ddb1604c0b00a1ea41fd6d93a579b294ab3fe6f40d1a9052a4",
         intel: "f2bdb47fe0e6ec0bf959637b5a94b9dd69e39e5798ac053642beb98fc0dedaa1"

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
