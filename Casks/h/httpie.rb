cask "httpie" do
  arch arm: "-arm64"

  version "2025.1.0"
  sha256 arm:   "c500599293ae15e4b265924889845f6faccfd9a8dd85b77e435afa6bade7a298",
         intel: "e1777c125603fd61f68aa4d90b7ac5130731254e65a98c6a72990830f633e02f"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}#{arch}.dmg",
      verified: "github.com/httpie/desktop/"
  name "HTTPie for Desktop"
  desc "Testing client for REST, GraphQL, and HTTP APIs"
  homepage "https://httpie.io/product"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "HTTPie.app"

  zap trash: [
    "~/Library/Application Support/HTTPie",
    "~/Library/Logs/HTTPie",
    "~/Library/Preferences/io.httpie.desktop.plist",
    "~/Library/Saved Application State/io.httpie.desktop.savedState",
  ]
end
