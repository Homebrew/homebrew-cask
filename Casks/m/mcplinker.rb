cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "ae20168ef03a13d2ceb71b2128d2c47190429a5451046dde247e17be350bdc7d",
         intel: "1a047fbe8127ca56604902b14c89238dccf7e9bd1e89616138c27d4dbf6dbc71"

  url "https://github.com/milisp/mcp-linker/releases/download/v#{version}/MCPLinker_#{version}_#{arch}.dmg"
  name "MCP Linker"
  desc "Manage and sync MCP server configurations across AI clients"
  homepage "https://github.com/milisp/mcp-linker"

  depends_on :macos

  app "MCPLinker.app"

  zap trash: [
    "~/.cache/mcp-linker",
    "~/.config/mcplinker",
    "~/Library/Application Support/dev.milisp.mcplinker",
    "~/Library/Caches/dev.milisp.mcplinker",
    "~/Library/HTTPStorages/dev.milisp.mcplinker.binarycookies",
    "~/Library/Preferences/dev.milisp.mcplinker.plist",
    "~/Library/WebKit/dev.milisp.mcplinker",
  ]
end
