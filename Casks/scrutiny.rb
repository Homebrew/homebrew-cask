cask "scrutiny" do
  version "9.13.3"
  sha256 "6f24620aa664f563f984bd9d5166874967e01f7a949b83e54907a86b9f78b788"

  url "https://peacockmedia.software/mac/scrutiny/scrutiny.dmg"
  appcast "https://peacockmedia.software/mac/scrutiny/version_history.html"
  name "Scrutiny"
  homepage "https://peacockmedia.software/mac/scrutiny/"

  app "Scrutiny #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Scrutiny #{version.major}",
    "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
    "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
    "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
  ]
end
