cask "context" do
  version "1.0.7"
  sha256 "11aa4363bb22b750b1a25dfc6e2acac80054b413a6e2947b50922bc2b24727f9"

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
