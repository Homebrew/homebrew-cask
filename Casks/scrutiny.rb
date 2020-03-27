cask 'scrutiny' do
  version '9.6.0'
  sha256 'c66cd7f9723a1ea4d462e0c09f58179a7d3dacd2e267dfe8b92d673e8e0bfe16'

  url 'https://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'https://peacockmedia.software/mac/scrutiny/version_history.html'
  name 'Scrutiny'
  homepage 'https://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/Scrutiny #{version.major}",
               "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
               "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
               "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
             ]
end
