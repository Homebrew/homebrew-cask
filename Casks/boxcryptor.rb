cask 'boxcryptor' do
  version '2.1.465.708'
  sha256 'ff554c1f4bb759f34216402ff7aab6cf5a8cc08df25e33d6f7aa2e3149d053f7'

  # d3k3ih5otj72mn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '74dfc32d84ff9747d3f35ca753390c1c4aec6a4b59b583e338eb9fb3ea6542d1'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Boxcryptor.app'
end
