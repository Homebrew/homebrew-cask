cask 'quiterss' do
  version '0.18.4'
  sha256 'f6d9dbf5817f94d5d7ddcae24a62aa5029ae4da2553728ecd81b745667d02353'

  url "https://quiterss.org/files/#{version}/QuiteRSS-#{version}.dmg"
  appcast 'https://github.com/QuiteRSS/quiterss/releases.atom',
          checkpoint: '5b373189915b31794b03dee3306ac6b238549647c64ddbf7f6d96c3f4df9d9c9'
  name 'QuiteRSS'
  homepage 'https://quiterss.org/'

  app 'Quiterss.app'

  zap delete: [
                '~/.config/QuiteRss',
                '~/Library/Caches/QuiteRss',
                '~/Library/Application Support/QuiteRss',
                '~/Library/Preferences/org.quiterss.QuiteRSS.plist',
              ]
end
