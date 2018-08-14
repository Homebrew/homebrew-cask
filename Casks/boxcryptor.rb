cask 'boxcryptor' do
  version '2.25.954'
  sha256 'b216c289e70acff8e00245e4ad395fb2a4e06a0c0351ab861762d75617b01589'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
