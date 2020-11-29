cask "scrutiny" do
  version "9.14.0"
  sha256 "7e859debc485a8fa3aa238d42a1d569a95f7b336546ce081a77fa2a8c5e7e061"

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
