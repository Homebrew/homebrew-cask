cask 'duet' do
  version '2.0.7.2'
  sha256 '518e32bdfe69fee656c1a3fabf14a03f47ce7409ae2875468e9f6e45c28a8fb0'

  # duet.nyc3.cdn.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://help.duetdisplay.com/updates/mac-release-notes'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
