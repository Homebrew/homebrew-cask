cask "chia" do
  version "1.3.5"

  arch = Hardware::CPU.intel? ? "" : "-arm64"

  if Hardware::CPU.intel?
    sha256 "ec4b41eb69b9c454748726297031a613f28c0e6bf92ba12bff745f04b565b05e"
  else
    sha256 "6fcdf66bc704fc06edf5d088ddf99afa81cf99b185039cccb738e1f67dec139b"
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
