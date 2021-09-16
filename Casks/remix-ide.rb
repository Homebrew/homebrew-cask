cask "remix-ide" do
  version "1.3.2"
  sha256 "78773c5aa61033a675d763f2af2402d701663829dc7925e2ad3c5483ad13aea7"

  url "https://github.com/ethereum/remix-desktop/releases/download/v#{version}/Remix-IDE-#{version}.dmg",
      verified: "github.com/ethereum/remix-desktop/"
  name "remix-ide"
  desc "Desktop version of Remix web IDE used for Ethereum smart contract development"
  homepage "https://remix-project.org/"

  livecheck do
    url "https://github.com/ethereum/remix-desktop/releases/download"
    strategy :page_match
    regex(%r{href=.*?/Remix-IDE-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Remix IDE.app"

  zap trash: [
    "/Library/Preferences/org.ethereum.remix-ide.plist",
    "~/Library/Saved Application State/org.ethereum.remix-ide.savedState",
  ]
end
