cask 'boxcryptor' do
  version '2.16.880'
  sha256 '47c0a9486d9b80ca0582d875a22307ff31320e36d036d5ee79bf4f2a55aafa02'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '5294c8d43ba3e498dce1e23fe1cf11279292237eb22823573d88bf5f75b22efb'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
