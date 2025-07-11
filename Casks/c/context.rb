cask "context" do
  version "1.0.8"
  sha256 "d33a7934c246669d12d27d4886f68476410d32a390255a4d2cb8642606897c84"

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
