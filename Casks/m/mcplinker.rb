cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "105f835f49864b8f743e1675f0645544a8433ed97390f866aa2eb1aefe14d007",
         intel: "c73d1ddb0f2390d35c7b3b33e59cb0c62405af77ccf0ba660d358833018df36e"

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
