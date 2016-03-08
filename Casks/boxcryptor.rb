cask 'boxcryptor' do
  version '2.1.467.718'
  sha256 '3859a2c0976a2fa1c280e4cea26a2037f125e066041f64cdbf4c47861aa39997'

  # d3k3ih5otj72mn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'c85906deda472e312cdd45f1892eb42db3f5c4a7adbbf737a407afbf756e8e9b'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Boxcryptor.app'
end
