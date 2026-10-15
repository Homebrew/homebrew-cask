cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "9aa6e5ad6c0ffff10e32b29fd8b24e5dfb50adadfc405af390ba5721002c98b6",
         intel: "53ab4e2332a6ba3e6389a61b190c5112502fe358781677aa5199378296529148"

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
