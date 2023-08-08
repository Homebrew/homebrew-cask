cask "httpie" do
  arch arm: "-arm64"

  version "2023.3.3"
  sha256 arm:   "1406051846b12010041c4ce3c892ed6cd9eeea724a118e3a44ebfee231f97c85",
         intel: "64f219784f7ddd76748b6c9533c2046b7a51be8c3d2e7f05dc60fd7a978b2503"

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
