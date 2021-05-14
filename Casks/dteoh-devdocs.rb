cask "dteoh-devdocs" do
  version "0.6.2"
  sha256 "5577150e2f70ac09466c4ecf0f45db38bbc40318a6fa40e955abe784b285d881"

  url "https://github.com/dteoh/devdocs-macos/releases/download/v#{version}/DevDocs.zip"
  name "DevDocs"
  desc "API documentation viewer"
  homepage "https://github.com/dteoh/devdocs-macos/"

  depends_on macos: ">= :big_sur"

  app "DevDocs.app"

  zap trash: [
    "~/Library/Caches/com.dteoh.devdocs-macos",
    "~/Library/Cookies/com.dteoh.devdocs-macos.binarycookies",
    "~/Library/Preferences/com.dteoh.devdocs-macos.plist",
    "~/Library/WebKit/com.dteoh.devdocs-macos",
  ]
end
