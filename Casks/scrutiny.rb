cask 'scrutiny' do
  version '8.2.0'
  sha256 '2f0a894d6ca8deda23f0e5c12ef61cb1949689bc4cc0fd367f680d0935cd60c3'

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
