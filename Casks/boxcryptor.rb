cask 'boxcryptor' do
  version '2.4.403.768'
  sha256 '3aecf5513ae0b05e340c70655e54d5a3b48a554fd479e9adc4e97c9c72c7214a'

  # d3k3ih5otj72mn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3k3ih5otj72mn.cloudfront.net/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'e2a747a1e5641595b466da20a79f59e86255b63f4a0d3a75febc77c8177a4033'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
