cask "integrity" do
  version "10.4.3"
  sha256 :no_check

  url "https://peacockmedia.software/mac/integrity/integrity.dmg"
  name "Integrity"
  desc "Tool to scans a website checking for broken links"
  homepage "https://peacockmedia.software/mac/integrity/"

  livecheck do
    url "https://peacockmedia.software/mac/integrity/version_history.html"
    regex(/<h3>v?(\d+(?:\.\d+)+)\s/i)
  end

  app "Integrity.app"

  zap trash: [
    "~/Library/Application Support/Integrity",
    "~/Library/Caches/com.peacockmedia.integrity",
    "~/Library/Cookies/com.peacockmedia.integrity.binarycookies",
    "~/Library/Preferences/com.peacockmedia.integrity.plist",
  ]
end
