cask "chia" do
  arch arm: "-arm64"

  version "2.1.3"
  sha256 arm:   "c3812da75fabe140e277991c420d19b99773dd0f00aaa0cfeb342b7816597711",
         intel: "d63cca2385cbb93af453b095957e5374bb8aed99b03fac0fba4187e3ff352389"

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
