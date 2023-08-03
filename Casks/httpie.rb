cask "httpie" do
  arch arm: "-arm64"

  version "2023.3.2"
  sha256 arm:   "97b38a2f375e2ed3b56e88a389ce64ad29c4f38bbb0185147ccfe863103e3c17",
         intel: "d9482c1aa450566bf5608e34b0cf500dd968b009d6b79449c7e2c7b924e9c0e5"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}#{arch}.dmg",
      verified: "github.com/httpie/desktop/"
  name "HTTPie for Desktop"
  desc "Testing client for REST, GraphQL, and HTTP APIs"
  homepage "https://httpie.io/product"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "HTTPie.app"

  zap trash: [
    "~/Library/Application Support/HTTPie",
    "~/Library/Logs/HTTPie",
    "~/Library/Preferences/io.httpie.desktop.plist",
    "~/Library/Saved Application State/io.httpie.desktop.savedState",
  ]
end
