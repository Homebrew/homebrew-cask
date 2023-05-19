cask "httpie" do
  arch arm: "-arm64"

  version "2023.2.4"
  sha256 arm:   "9e8d56af6fbd496ea186ae0050ffb8fbe821895b7e469e278449b231bdc7f71d",
         intel: "ee0284a523be4d7af92c61fa05ec9ca63b0aa6356423fd808d1a41b46153d24b"

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
