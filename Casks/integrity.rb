cask "integrity" do
  version "9.8.4"
  sha256 "a78367b253478d7e771bb9401f4a4e05e4da4e2c02fa2a7f9633927b5859eda7"

  url "https://peacockmedia.software/mac/integrity/integrity.dmg"
  appcast "https://peacockmedia.software/mac/integrity/version_history.html"
  name "Integrity"
  homepage "https://peacockmedia.software/mac/integrity/"

  app "Integrity.app"

  zap trash: [
    "~/Library/Application Support/Integrity",
    "~/Library/Caches/com.peacockmedia.integrity",
    "~/Library/Cookies/com.peacockmedia.integrity.binarycookies",
    "~/Library/Preferences/com.peacockmedia.integrity.plist",
  ]
end
