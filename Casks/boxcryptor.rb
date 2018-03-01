cask 'boxcryptor' do
  version '2.20.918'
  sha256 '83539d089b59153eccc6b00c07c361c0f972ff245e837545f739c464f9e1717b'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '44a93b1b7f60c8bbe2286cce2755ea4401507e883d56c359163e31a0480088ba'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
