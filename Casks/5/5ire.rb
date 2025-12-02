cask "5ire" do
  arch arm: "-arm64"

  version "0.15.1"
  sha256 arm:   "617a55c4b3fa5fd5872861cd5cda8f6dfdb8039b1468345dff8cc8d5411324cd",
         intel: "97eee400ca4fd4207717fc034c086a22d75ee6fdf2ecf0ad387dac5135cf6482"

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
