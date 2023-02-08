cask "httpie" do
  arch arm: "-arm64"

  version "2023.1.2"
  sha256 arm:   "1d9924a0c256fbbccff2e1f1ec0e0b826c4af5acc8184bd2fffb4e05f72a4f40",
         intel: "23fcc2aff253aaf442b4083992db8be7d818d329be78db5c59fd19b9cf1c70f2"

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
