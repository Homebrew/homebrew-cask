cask "5ire" do
  arch arm: "-arm64"

  version "0.15.0"
  sha256 arm:   "6e7b6490ae9859006779b5fa1637c88a2e6c3a377ab0de6c48f5b5e8a992b726",
         intel: "74178c07c5af0c5e0dd824a1cda2b44df6b6fbe9659da15ec5022be3b94c523d"

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
