cask "remix-ide" do
  version "1.3.4"
  sha256 "017f862e7dc0583a2a6f162e3842f1ab1f5d9d08499962c4d577ad1a49db5630"

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
