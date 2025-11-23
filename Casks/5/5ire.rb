cask "5ire" do
  arch arm: "-arm64"

  version "0.14.1"
  sha256 arm:   "1b86f5476e0790afa1c56673bddc3a69d19c4941214659bbc0e516efcf83e25d",
         intel: "5649e103e708211389f046647b1b148ab94b8f839c5b32cfe2e3330c8a55b4c4"

  url "https://github.com/nanbingxyz/5ire/releases/download/v#{version}/5ire-#{version}#{arch}.dmg",
      verified: "github.com/nanbingxyz/5ire/"
  name "5ire"
  desc "AI assistant and MCP client"
  homepage "https://5ire.app/"

  # Not every GitHub release provides a file for macOS, so we check the
  # homepage, which links to the dmg files on GitHub.
  livecheck do
    url :homepage
    regex(/5ire[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  app "5ire.app"

  zap trash: [
    "~/Library/Application Support/5ire",
    "~/Library/Logs/5ire",
    "~/Library/Preferences/com.5ire.5ire.plist",
  ]
end
