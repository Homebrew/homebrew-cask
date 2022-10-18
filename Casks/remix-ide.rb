cask "remix-ide" do
  version "1.3.5"
  sha256 "2af7fbbbaab22e23d71ca5c555236cc1aa065626cc47feba8c2a9f7a28f0ad80"

  url "https://github.com/ethereum/remix-desktop/releases/download/v#{version}/Remix-IDE-#{version}.dmg",
      verified: "github.com/ethereum/remix-desktop/"
  name "Remix IDE desktop"
  desc "Desktop version of Remix web IDE used for Ethereum smart contract development"
  homepage "https://remix-project.org/"

  app "Remix IDE.app"

  zap trash: [
    "~/Library/Preferences/org.ethereum.remix-ide.plist",
    "~/Library/Saved Application State/org.ethereum.remix-ide.savedState",
  ]
end
