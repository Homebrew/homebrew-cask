cask 'scrolls' do
  version :latest
  sha256 :no_check

  url 'http://download.scrolls.com/new-installer/mac/Scrolls.dmg'
  name 'Mojang Scrolls'
  homepage 'https://scrolls.com/'
  license :gratis

  app 'Scrolls.app'

  zap delete: [
                '~/Library/Application Support/Scrolls/',
                '~/Library/Application Support/Scrolls Launcher/',
              ]
end
