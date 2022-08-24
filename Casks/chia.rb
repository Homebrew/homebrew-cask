cask "chia" do
  arch arm: "-arm64"

  version "1.5.1"
  sha256 arm:   "87c888fc7a36acecb451b8701a7308da56ae0d61467d0feb144592131608eaeb",
         intel: "021619970052506607a20fac237215f6afe7508cf56af8427e3fc03403c9fb58"

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
