cask "mcp-curator" do
  version "0.1.0"
  sha256 "1b50b5fd4a92af3774ad3fa54631caf9512597fb4d96e4bc8da4b66035566f81"

  url "https://github.com/strawberry-code/mcp-curator/releases/download/v#{version}/MCP.Curator_#{version}_aarch64.dmg"
  name "MCP Curator"
  desc "Desktop manager for Claude Code MCP server configurations"
  homepage "https://github.com/strawberry-code/mcp-curator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "MCP Curator.app"

  zap trash: [
    "~/Library/Application Support/com.strawberry-code.mcp-curator",
    "~/Library/Caches/com.strawberry-code.mcp-curator",
    "~/Library/Preferences/com.strawberry-code.mcp-curator.plist",
    "~/Library/Saved Application State/com.strawberry-code.mcp-curator.savedState",
  ]
end
