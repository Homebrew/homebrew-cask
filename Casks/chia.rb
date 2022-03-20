cask "chia" do
  version "1.3.1"

  arch = Hardware::CPU.intel? ? "" : "-arm64"

  if Hardware::CPU.intel?
    sha256 "4ba0a3686a9144ef2d9ba3974900e431386ea2ad31d302816116c1907e142093"
  else
    sha256 "38d63cdbc7e0340f66efc4f1d3b056cf703ec59f2302538d466793def9b92336"
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
