cask "integrity" do
  version "9.13.3"
  sha256 "678321a7146c95a10d750a1b6d448d0e0b40b68a34528a989e5799fd258b5ba7"

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
