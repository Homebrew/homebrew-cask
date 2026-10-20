cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "932690f181dfab8140238f7f18577dbd2d65d6b7be5dfd8c13e49e164ca0a1ac",
         intel: "3abbec950797aec4b073e13b43b46bdbc5f2d2a5ec5d8907fac6594199636583"

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
