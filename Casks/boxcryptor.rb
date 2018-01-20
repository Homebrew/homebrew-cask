cask 'boxcryptor' do
  version '2.19.907'
  sha256 '466e1d78571226c616cca6bcd86a07c756a218eb9f9928d543f9fb1ba672b7b3'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'e17a4ddaeeec6af2c0b5937da65c74561a15380f8fd19ac8722aea170629fc54'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
