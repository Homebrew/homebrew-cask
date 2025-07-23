cask "5ire" do
  arch arm: "-arm64"

  version "0.13.2"
  sha256 arm:   "7601234c03027f654747d4ba9e05217aea59b7a68a17a0ab9c691f90956a6ed3",
         intel: "563b2a915138db57e40278d279edc361087bb231629a3cc8819f899e5e32448e"

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
