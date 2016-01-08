cask 'boxcryptor' do
  version '2.1.461.704'
  sha256 '128231f33b8ac938ff517ca58ffef6a1c05526461226e90d88966937caa56f1f'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d3k3ih5otj72mn.cloudfront.net/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          :sha256 => '8c9d547d276df2cebf9cb5934b973c6d3b3959168767ac202d08c852d5bbeaa1'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'Boxcryptor.app'
end
