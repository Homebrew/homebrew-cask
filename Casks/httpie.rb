cask "httpie" do
  arch arm: "-arm64"

  version "2022.12.0"
  sha256 arm:   "934f08b885c7fa483dcf3ee83a569224d9a199a1c86917544024daaad16890cc",
         intel: "3f6b841c16159ed9c6361dbe165e4a5afdba34dbe70aa95f719faf39d699783b"

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
