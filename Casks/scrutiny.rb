cask 'scrutiny' do
  version '9.0.5'
  sha256 '579257507c841dbaf32c48e75d6789f29747ad2c6ea8746630eb3006cfda74fd'

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
