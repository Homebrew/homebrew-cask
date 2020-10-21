cask "scrutiny" do
  version "9.13.1"
  sha256 "7bc83ca52e2835c2c3540a2d09c3703c1e6d17e710c05149ba395131faa4d8f0"

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
