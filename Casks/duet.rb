cask 'duet' do
  version '1.7.1.4'
  sha256 '77279033e3776af86eb7d54d1177a75edefed72d4c829eea53dc87bf92dd0004'

  # duet.nyc3.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
