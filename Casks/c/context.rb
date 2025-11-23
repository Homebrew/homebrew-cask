cask "context" do
  version "1.0.10"
  sha256 "40279911df2fd5177c5c85f9fe2a0d7bc2b0ab4b0fab36f07b477e82f0eb751a"

  url "https://github.com/indragiek/Context/releases/download/v#{version}/Context_v#{version}.dmg",
      verified: "github.com/indragiek/Context/"
  name "Context"
  desc "MCP client and inspector"
  homepage "https://www.contextmcp.app/"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Context.app"

  zap trash: [
    "~/Library/Application Support/Context",
    "~/Library/Caches/com.indragie.Context",
    "~/Library/HTTPStorages/com.indragie.Context",
    "~/Library/Preferences/com.indragie.Context.plist",
    "~/Library/Preferences/ContextStoreAgent.plist",
  ]
end
