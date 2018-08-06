cask 'scrutiny' do
  version '8.1.8'
  sha256 '7992af698bb28f0ee02e9a1ccd9b2d8cddc4e7720273590817f9f7cca1d3c401'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/Scrutiny #{version.major}",
               "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
               "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
               "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
             ]
end
