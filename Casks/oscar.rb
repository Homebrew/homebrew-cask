cask 'oscar' do
  version '1.1.1'
  sha256 '69f0f5e37f8c8aeaf2c2f03993cf1a15dc00952657fb6dd8fa4f7bb2b2b1b720'

  # apneaboard.com/OSCAR/ was verified as official when first introduced to the cask
  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg"
  appcast 'https://www.sleepfiles.com/OSCAR/'
  name 'OSCAR'
  homepage 'https://www.sleepfiles.com/OSCAR/'

  app 'OSCAR.app'
end
