cask "httpie" do
  arch arm: "-arm64"

  version "2023.1.1"
  sha256 arm:   "7ac19569025c69a21eec143dcb41a89d4e45d1822ff9b45621b9ea7c017d14bc",
         intel: "1b8720345d14cc96accd1bf4c5a324855d3907267a6ea64ec84b212d6c80f302"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}#{arch}.dmg",
      verified: "github.com/httpie/desktop/"
  name "HTTPie for Desktop"
  desc "Testing client for REST, GraphQL, and HTTP APIs"
  homepage "https://httpie.io/product"

  livecheck do
    url "https://httpie.io/download"
    regex(/href=.*?HTTPie[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "HTTPie.app"

  zap trash: [
    "~/Library/Application Support/HTTPie",
    "~/Library/Logs/HTTPie",
    "~/Library/Preferences/io.httpie.desktop.plist",
    "~/Library/Saved Application State/io.httpie.desktop.savedState",
  ]
end
