cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "01e0f12022a75d1e96e8d5cee84818b44687b2e7fc4fdf365a2bbcb7b0488b5e",
         intel: "555cc89b24c8e3d42ecdb09adb02c74bf853d268fb4d4e8b6af6364219aa80cd"

  url "https://github.com/milisp/mcp-linker/releases/download/v#{version}/MCPLinker_#{version}_#{arch}.dmg"
  name "MCP Linker"
  desc "Manage and sync MCP server configurations across AI clients"
  homepage "https://github.com/milisp/mcp-linker"

  depends_on :macos

  app "MCPLinker.app"

  zap trash: [
    "~/.cache/mcp-linker",
    "~/.config/mcplinker",
    "~/Library/Caches/dev.milisp.mcplinker",
    "~/Library/HTTPStorages/dev.milisp.mcplinker.binarycookies",
    "~/Library/Preferences/dev.milisp.mcplinker.plist",
    "~/Library/WebKit/dev.milisp.mcplinker",
  ]
end
