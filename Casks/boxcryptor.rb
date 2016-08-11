cask 'boxcryptor' do
  version '2.3.405.746'
  sha256 '0067dad6e70041f38076fd26fa674f337e51b6532bb8e35a2ac534e7e4fb858b'

  # d3k3ih5otj72mn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '5d0f6c73dd0c2a0fc578c87268187306baaa610adb6f4a1d9cc7976b657659fc'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Boxcryptor.app'
end
