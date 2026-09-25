cask "mcplinker" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.4"
  sha256 arm:   "05b041bf433562a2ec99348a6552865bba7a842777da92da2ede24a0f08d0f90",
         intel: "5055b967c77f8256b493ff398d75b01a9d8b64d14fe6179d0fe004f2d907452a"

  url "https://github.com/milisp/mcp-linker/releases/download/v#{version}/MCPLinker_#{version}_#{arch}.dmg"
  name "MCP Linker"
  desc "Manage and sync MCP server configurations across AI clients"
  homepage "https://github.com/milisp/mcp-linker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "MCPLinker.app"

  zap trash: [
    "~/.cache/mcp-linker",
    "~/.claude.disabled.json",
    "~/.config/mcplinker",
    "~/Library/Caches/dev.milisp.mcplinker",
    "~/Library/HTTPStorages/dev.milisp.mcplinker.binarycookies",
    "~/Library/Preferences/dev.milisp.mcplinker.plist",
    "~/Library/WebKit/dev.milisp.mcplinker",
  ]
end
