cask "httpie" do
  arch arm: "-arm64"

  version "2022.16.0"
  sha256 arm:   "a557901161e35a0a9f6373b383b87043f6fa541009bf0ae5297314cc01b0961a",
         intel: "2af6bc5f8b2895ce03dd63f159541d121d88ab8b9696c1a48c783e48e98999fd"

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
