cask "httpie" do
  arch arm: "-arm64"

  version "2023.3.4"
  sha256 arm:   "3f18b4c0cb911000aaaad8dd22e819e32cbab3780efa31c039042cc89eec23aa",
         intel: "466292b3d9dde2bd2b6acae36bcc80b15df4c602cc33690806fc49c7d502742f"

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
