cask "mcpbundler" do
  version "1.0,27"
  sha256 "304a07eb6a5dca7f854839cd40b0e1beb02ec8bb2a78abe9267da2781fd4c7c1"

  url "https://mcp-bundler.com/downloads/MCPBundler-#{version.csv.first}-#{version.csv.second}.zip"
  name "MCP Bundler"
  desc "MCP servers and Agent skills management app"
  homepage "https://mcp-bundler.com/"

  livecheck do
    url "https://mcp-bundler.com/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "MCPBundler.app"

  zap trash: [
    "~/Library/Application Support/Lifeisgoodlabs.MCP-Bundler",
    "~/Library/Caches/Lifeisgoodlabs.MCP-Bundler",
    "~/Library/Preferences/Lifeisgoodlabs.MCP-Bundler.plist",
  ]
end
