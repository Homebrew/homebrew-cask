cask 'scrutiny' do
  version '7.4.3'
  sha256 'cadb2c325a44c1e580f9289f1edd7c2dedce966971b5bdc4c21a22a35f6324e9'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast "http://peacockmedia.software/mac/scrutiny/updates/v#{version.major}currentversion.plist",
          checkpoint: 'fffded6738d456779ce0e908a52dda4e2fe600515a1bb6b97fca07d838f6dee4'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap delete: [
                "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
                "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
              ],
      trash:  [
                "~/Library/Application Support/Scrutiny #{version.major}",
                "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
              ]
end
