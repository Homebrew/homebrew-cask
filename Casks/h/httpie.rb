cask "httpie" do
  arch arm: "-arm64"

  version "2024.1.1"
  sha256 arm:   "9cc547a8cdb13a77615c1d1d4dee028f3348414fc38724ebec59e2fb324813f5",
         intel: "d6c7c27e000070a538e93e30d359cdfb5854a2b9de8882c385f44bd8ea082ab5"

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
