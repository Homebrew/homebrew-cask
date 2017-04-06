cask 'rhodes-kite' do
  version '1.1'
  sha256 '0f80766eb315d6e2188ea2c62ea86478f838719d34b6e70d1e42d07d8bde5519'

  url 'https://kiteapp.co/downloads/KiteCompositor.dmg'
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '4bf1b9e1686160f292d1de9e714d5fe74003df2be7a3c06ffa7870a4eb90ea69'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
