cask 'boxcryptor' do
  version '2.1.461.704'
  sha256 '128231f33b8ac938ff517ca58ffef6a1c05526461226e90d88966937caa56f1f'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          :sha256 => '9873a491e524392a6b52bf244adb1eecd61ec8300acf68e0273d2528727cffb0'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'Boxcryptor.app'
end
