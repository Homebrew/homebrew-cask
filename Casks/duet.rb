cask 'duet' do
  version '2.0.3.1'
  sha256 '905f62b3af2c39d22dc1563dab8ee86b27b7c4457947875a7aec10800d016d87'

  # duet.nyc3.cdn.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
