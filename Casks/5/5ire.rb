cask "5ire" do
  arch arm: "-arm64"

  version "0.14.0"
  sha256 arm:   "adc9b3ad4aeb393ae76df0f1039b2c7272122fb9f7f393e7b79892faa90007e3",
         intel: "0dab2db0149a065b08a1c6fe0a714feac76da7f39e108ef695d36bb852e501ac"

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
