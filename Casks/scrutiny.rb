cask 'scrutiny' do
  version '8.3.0'
  sha256 '49b4f5268225be9d3c257dc4446d07b9e1cf0d90d86d27a4c01f3f7b57d5fd19'

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
