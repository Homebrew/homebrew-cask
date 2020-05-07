cask 'scrutiny' do
  version '9.6.6'
  sha256 '056e694811826705b6b5bf0714841dd5c77d723700587b27283092d6d9c8678f'

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
