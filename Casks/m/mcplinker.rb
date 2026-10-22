cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "24540d594f025b21640963a14f2755faa3cfe50398428ccb394f76f63925db09",
         intel: "8cd708b50332aef1f0a987cea6398decaf9b12694b8065d02a79676a0e50bc4c"

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
