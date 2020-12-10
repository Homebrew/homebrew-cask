cask "dteoh-devdocs" do
  version "0.6.1"
  sha256 "74e69f1118f6db9494d844cef5fc3865b5e91cf133703f29fb3ac60bf446edbf"

  url "https://github.com/dteoh/devdocs-macos/releases/download/v#{version}/DevDocs.zip"
  appcast "https://github.com/dteoh/devdocs-macos/releases.atom"
  name "DevDocs App"
  desc "DevDocs API documentation viewer"
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
