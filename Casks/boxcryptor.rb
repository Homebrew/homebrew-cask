cask 'boxcryptor' do
  version '2.1.465.708'
  sha256 'ff554c1f4bb759f34216402ff7aab6cf5a8cc08df25e33d6f7aa2e3149d053f7'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '055743b0219d9f5bbbf4e54c5f248098083e400f5df09717b2ca351db3a3d343'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Boxcryptor.app'
end
