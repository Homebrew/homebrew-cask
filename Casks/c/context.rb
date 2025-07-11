cask "context" do
  version "1.0.9"
  sha256 "fcef0dcfd26efce4da7046844186070a75b634d773217d5f6c098a3dc36d9e04"

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
