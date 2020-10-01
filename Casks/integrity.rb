cask "integrity" do
  version "9.12.3"
  sha256 "7eeb02fb1cab20861d88501db19187bbc80cc98c84216e12ec73d8372b24c272"

  url "https://peacockmedia.software/mac/integrity/integrity.dmg"
  appcast "https://peacockmedia.software/mac/integrity/version_history.html"
  name "Integrity"
  desc "Tool to scans a website checking for broken links"
  homepage "https://peacockmedia.software/mac/integrity/"

  app "Integrity.app"

  zap trash: [
    "~/Library/Application Support/Integrity",
    "~/Library/Caches/com.peacockmedia.integrity",
    "~/Library/Cookies/com.peacockmedia.integrity.binarycookies",
    "~/Library/Preferences/com.peacockmedia.integrity.plist",
  ]
end
