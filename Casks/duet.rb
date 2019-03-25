cask 'duet' do
  version '2.0.5.3'
  sha256 '5dc134d6821812e59e72ed6801e33461422cbbd82a7e8e4c0840554cfc691142'

  # duet.nyc3.cdn.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://help.duetdisplay.com/updates/mac-release-notes'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
