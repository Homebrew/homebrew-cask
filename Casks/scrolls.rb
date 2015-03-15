cask :v1 => 'scrolls' do
  version :latest
  sha256 :no_check

  url 'http://download.scrolls.com/new-installer/mac/Scrolls.dmg'
  name 'Scrolls'
  homepage 'https://scrolls.com/'
  license :gratis
  tags :vendor => 'Mojang'

  app 'Scrolls.app'

  zap :delete => [
                  '~/Library/Application Support/Scrolls/',
                  '~/Library/Application Support/Scrolls Launcher/'
                 ]
end
