cask 'boxcryptor' do
  version '2.23.939'
  sha256 '1ded3194ba86e899d803d29cdb9b44a87cf3fcf308b66ddb891cc94155e164c9'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '93ad2ab887f7c304ddd514166b922f00a95499705bc624b490989593f7d38287'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
