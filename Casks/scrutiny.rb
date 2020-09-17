cask "scrutiny" do
  version "9.10.0"
  sha256 "a415c39269844af5a4461a199800fa76af87a00a3ab06894ab3404e08eccb5cb"

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
