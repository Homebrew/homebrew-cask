cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "3affd2497059c58295316620d8350c9668a08aa39fba1b8be81a982ce4954d5e",
         intel: "066109af894adaf6a61f8505e61833cb4144064a978f67c2b3ffea676301a933"

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
