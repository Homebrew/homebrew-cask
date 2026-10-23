cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "b79f4642fae48df81fa3bd98b4e1a6968ba5c06bc28f38308393873945658e24",
         intel: "ee796a0014e2f65e5bb1358da5eae44d44e889d33371c47d8fdb69fbbd3edf60"

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
