cask 'boxcryptor' do
  version '2.17.892'
  sha256 '3d3069762effe09cf981e3b6668e53bef978725152706b641b0cc4dda5273d96'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'cc45bdd46499c1d7ca27750083b8c727f4ed76ca0108147ce43686d14c8264db'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
