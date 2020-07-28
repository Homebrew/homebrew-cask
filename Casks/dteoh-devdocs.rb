cask "dteoh-devdocs" do
  version "0.5.2"
  sha256 "706986440df2ec1765b483d42876953ebc789cd0170c657cb5266cc945ca25e9"

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
