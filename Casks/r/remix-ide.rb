cask "remix-ide" do
  version "1.3.6"
  sha256 "a4a0d81e06f99f5721864afbf587b273a61d19b2d6e690a015dff2bf681039a4"

  url "https://github.com/ethereum/remix-desktop/releases/download/v#{version}/Remix-IDE-#{version}.dmg",
      verified: "github.com/ethereum/remix-desktop/"
  name "Remix IDE desktop"
  desc "Desktop version of Remix web IDE used for Ethereum smart contract development"
  homepage "https://remix-project.org/"

  deprecate! date: "2024-07-28", because: :repo_archived

  app "Remix IDE.app"

  zap trash: [
    "~/Library/Preferences/org.ethereum.remix-ide.plist",
    "~/Library/Saved Application State/org.ethereum.remix-ide.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
