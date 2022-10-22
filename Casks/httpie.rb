cask "httpie" do
  arch arm: "-arm64"

  version "2022.15.0"
  sha256 arm:   "9c020b589b285243e5c7b996bf6153803d2b3da7c318be2e76cfd5529e225a0a",
         intel: "0b3901d559fa7dc4ca9bcbbd8bc73a061d8c595373e077c4e52b82663ad8feb9"

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
