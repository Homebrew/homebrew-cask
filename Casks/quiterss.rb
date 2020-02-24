cask 'quiterss' do
  version '0.19.3'
  sha256 '841dbf3105681eb789d63f98dde850bc9b8582aa7df96f595fbdb5fecc6a52b6'

  url "https://quiterss.org/files/#{version}/QuiteRSS-#{version}.dmg"
  appcast 'https://github.com/QuiteRSS/quiterss/releases.atom'
  name 'QuiteRSS'
  homepage 'https://quiterss.org/'

  app 'quiterss.app'

  zap delete: [
                '~/.config/QuiteRss',
                '~/Library/Caches/QuiteRss',
                '~/Library/Application Support/QuiteRss',
                '~/Library/Preferences/org.quiterss.QuiteRSS.plist',
              ]
end
