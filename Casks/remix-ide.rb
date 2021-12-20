cask "remix-ide" do
  version "1.3.3"
  sha256 "7d5b463e46a2f72adaa1c3a6b1c485e2084e4c47a78763d1cecd3758b027f110"

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
