cask "httpie" do
  arch arm: "-arm64"

  version "2023.3.5"
  sha256 arm:   "b1bab40137592abc575f018ef5c2efb71ee0300f5e64e45587a9c44784ff498d",
         intel: "a8144b84a56fcf67fc7f21f3c3bb902aa287ccb1b38491c316d44073dc323601"

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
