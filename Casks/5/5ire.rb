cask "5ire" do
  arch arm: "-arm64"

  version "0.11.3"
  sha256 arm:   "b1f1b4277e25d09c3d04932ef7895132b97749ab148a5c561b51619d361e9f72",
         intel: "eaf3da7d121f300df58f8c1eb4215622ab6f9c4201500f8c25fa643cef3c02b3"

  url "https://github.com/nanbingxyz/5ire/releases/download/v#{version}/5ire-#{version}#{arch}.dmg",
      verified: "github.com/nanbingxyz/5ire/"
  name "5ire"
  desc "AI assistant and MCP client"
  homepage "https://5ire.app/"

  depends_on macos: ">= :catalina"

  app "5ire.app"

  zap trash: [
    "~/Library/Application Support/5ire",
    "~/Library/Logs/5ire",
    "~/Library/Preferences/com.5ire.5ire.plist",
  ]
end
