cask 'boxcryptor' do
  version '2.11.828'
  sha256 'd33508c13a302ee7f94d0c4f5452f1637e1b672e6518e894ea29c2fb9b2e4a66'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '36e8a7af4c5443a41defc4795c3fe5a58af91beecc2cc72d7eb07d40781a14ea'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
