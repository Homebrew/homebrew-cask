cask "5ire" do
  arch arm: "-arm64"

  version "0.13.0"
  sha256 arm:   "672fd0f84098c9ccaeb5edaad371d6ee23757b9f1de2d6851d9de99ce7a00cae",
         intel: "6270d3be08036973053a8a0680a7e40a88b4b6fd172b1241db0adfffc8226608"

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

  depends_on macos: ">= :catalina"

  app "5ire.app"

  zap trash: [
    "~/Library/Application Support/5ire",
    "~/Library/Logs/5ire",
    "~/Library/Preferences/com.5ire.5ire.plist",
  ]
end
