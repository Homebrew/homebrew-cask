cask 'keymo' do
  version '1.2.4'
  sha256 '583a7ac1a42d804883e5d71d352a96de26128ca1c01c9caaa175fb085b5042ec'

  url 'https://manytricks.com/download/keymo'
  appcast 'https://manytricks.com/keymo/appcast.xml',
          checkpoint: '92314cc0908a53935d85123d9dbbb063d3aa8c0311c27c66ccc1692a8fe43701'
  name 'Keymo'
  homepage 'https://manytricks.com/keymo'
  license :commercial

  auto_updates true

  app 'Keymo.app'

  zap delete: '~/Library/Preferences/com.manytricks.Keymo.plist'
end
