cask "5ire" do
  version "0.11.1"
  sha256 "d461710a1bfae9588f37f5db9b3c5d4bfa9fad7985efad3717673366413dcf81"

  url "https://github.com/nanbingxyz/5ire/releases/download/v#{version}/5ire-#{version}-arm64.dmg",
      verified: "github.com/nanbingxyz/5ire/"
  name "5ire"
  desc "Sleek AI assistant and MCP client with local knowledge base and analytics"
  homepage "https://5ire.app/"

  depends_on macos: ">= :catalina"

  app "5ire.app"

  zap trash: [
    "~/Library/Application Support/5ire",
    "~/Library/Logs/5ire",
    "~/Library/Preferences/com.5ire.5ire.plist",
  ]
end
