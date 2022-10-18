cask "httpie" do
  arch arm: "-arm64"

  version "2022.14.0"
  sha256 arm:   "69b2952bb661a9de3087f1e5dca5e93e784e8cb941a7b88a445d241848c6c524",
         intel: "bf7b024890f9bc3a6bf7721e5e5cebf0f188b5c11d987c8e2de6e8c6ff6dbd7f"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}#{arch}.dmg",
      verified: "github.com/httpie/desktop/"
  name "HTTPie for Desktop"
  desc "Desktop wrapper for HTTPie"
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
