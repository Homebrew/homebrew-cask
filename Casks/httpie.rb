cask "httpie" do
  arch arm: "-arm64"

  version "2023.1.0"
  sha256 arm:   "7585d69ce7fbd912e80f8018d4401567bdb7d63e7dcc78e515a6fdb66292d4c9",
         intel: "dd430f3397534ee52b4027ad7a54397c798294828f35f57502443cbacd50cc46"

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
