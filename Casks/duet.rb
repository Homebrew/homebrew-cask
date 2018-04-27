cask 'duet' do
  version '1.7.1.2'
  sha256 '1ed7d2e311ff1d4808b8364856da2689a3cebcea7abebce36dd9858634c7e8bf'

  # duet.nyc3.digitaloceanspaces.com/Mac was verified as official when first introduced to the cask
  url "https://duet.nyc3.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: 'b536da0feb2140c61711c9a3ac37c0e33acfbbdff505a73a2fabf243704fa17e'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
