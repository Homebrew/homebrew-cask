cask "chia" do
  arch arm: "-arm64"

  version "2.7.5"
  sha256 arm:   "92f29c62e9dfe2c51108fdc9aebe7fb68916afa63dc8c73efdd818a8d1c7fcbf",
         intel: "9da193c9707f525bc7253c90c5ec58ecf02efc9e104d38b6b27c6d7592eb02b7"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}#{arch}.dmg"
  name "Chia Blockchain"
  desc "GUI Python implementation for the Chia blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Chia.app"

  uninstall quit: "net.chia.blockchain"

  zap trash: [
    "~/.chia",
    "~/Library/Application Support/Chia Blockchain",
    "~/Library/Caches/Chia Blockchain",
    "~/Library/Preferences/net.chia.blockchain.plist",
    "~/Library/Saved Application State/net.chia.blockchain.savedState",
  ]
end
