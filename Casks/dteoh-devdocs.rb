cask "dteoh-devdocs" do
  version "0.7.0"
  sha256 "3355a10fa94f4eea3693620cb9403b4a5d51c5bfa9f91bc592d9fd65f59024da"

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
