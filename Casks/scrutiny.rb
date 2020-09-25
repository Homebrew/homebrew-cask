cask "scrutiny" do
  version "9.12.0"
  sha256 "6ebc288673ced60a67c36f5e2c362098e30df55b4e4ef6df212f497164248f91"

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
