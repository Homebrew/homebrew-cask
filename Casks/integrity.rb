cask "integrity" do
  version "9.8.5"
  sha256 "e7d23a50e2f7504f86a9e8b41acfbb372c565bea3dd1dc6f1062a4cc551e3722"

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
