cask 'boxcryptor' do
  version '2.21.923'
  sha256 'de40f20ede52bd3bfee74475ffa5c951efd9798c6634cad5cb447d6eef4decb7'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'e524059e0a9e9afcd974cfa400f1b6dfdf1ce6a6caa63eefe92b0e6c2fcf29fd'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
