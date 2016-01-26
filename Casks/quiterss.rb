cask 'quiterss' do
  version '0.17.7'
  sha256 '7967cd729044152b1e876eba9492fbfc307104b259dbb2bb664d486836cda3dd'

  url "https://quiterss.org/files/#{version}/QuiteRSS-#{version}.dmg"
  name 'QuiteRSS'
  homepage 'https://quiterss.org/'
  license :gpl

  app 'Quiterss.app'

  zap delete: [
                '~/.config/QuiteRss',
                '~/Library/Caches/QuiteRss',
                '~/Library/Application Support/QuiteRss',
                '~/Library/Preferences/org.quiterss.QuiteRSS.plist',
              ]
end
