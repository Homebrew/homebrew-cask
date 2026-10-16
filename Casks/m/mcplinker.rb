cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "b00821f78b5b5971e18ece342da4a601fa7012bca90f6e2b60dcb51191e081be",
         intel: "a7a1e7c9dfdd9af461a245af884241f2ac5de75c0ae549842c586ab5173136a3"

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
