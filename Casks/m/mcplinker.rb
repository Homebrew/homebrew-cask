cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "172eb340c849e3fc2273fca40ef866e3b356d114447e3abdef631dd50aa78403",
         intel: "ad386cdeb7b35a6651a70bb5aa505635d6eae49a8c1747bb6561387f3475cf70"

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
