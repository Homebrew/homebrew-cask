cask 'scrolls' do
  version :latest
  sha256 :no_check

  url 'https://download.scrolls.com/new-installer/mac/Scrolls.dmg'
  name 'Mojang Scrolls'
  homepage 'https://scrolls.com/'

  app 'Scrolls.app'

  zap trash: [
               '~/Library/Application Support/Scrolls/',
               '~/Library/Application Support/Scrolls Launcher/',
             ]
end
