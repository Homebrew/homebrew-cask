cask "dteoh-devdocs" do
  version "0.6.0"
  sha256 "f5ebe3cd775d9061b176b1e8e1e95eebbf4287245a4ae1ddaecbc9a5c0fa6da4"

  url "https://github.com/dteoh/devdocs-macos/releases/download/v#{version}/DevDocs.zip"
  appcast "https://github.com/dteoh/devdocs-macos/releases.atom"
  name "DevDocs App"
  homepage "https://github.com/dteoh/devdocs-macos/"

  depends_on macos: ">= :mojave"

  app "DevDocs.app"

  zap trash: [
    "~/Library/Caches/com.dteoh.devdocs-macos",
    "~/Library/Cookies/com.dteoh.devdocs-macos.binarycookies",
    "~/Library/Preferences/com.dteoh.devdocs-macos.plist",
    "~/Library/WebKit/com.dteoh.devdocs-macos",
  ]
end
