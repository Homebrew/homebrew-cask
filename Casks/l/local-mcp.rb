cask "local-mcp" do
  version "3.0.206"
  sha256 "18e0218ba83c9bc5d9897ea06d691e836fe1ac1125f7f6cec82b6294fffbb3a5"

  url "https://download.local-mcp.com/LocalMCP-#{version}.dmg"
  name "Local MCP"
  desc "Connect AI agents to Mail, Calendar, Teams, OneDrive and more"
  homepage "https://local-mcp.com/"

  depends_on macos: ">= :ventura"

  app "LocalMCPTray.app"

  uninstall delete:    "#{Dir.home}/Library/LaunchAgents/com.local-mcp.server.plist",
            launchctl: "com.local-mcp.server"

  zap trash: [
    "~/Library/Application Support/Local MCP",
    "~/.local/share/local-mcp",
  ]

  livecheck do
    url "https://office-mcp-production.up.railway.app/latest"
    strategy :json do |json|
      json["version"]
    end
  end
end
