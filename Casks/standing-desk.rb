cask 'standing-desk' do
  version '1.1'
  sha256 'de8b9cafd7e6416e550ed3c67dadab2c3550cc0f29ed409696931d08d1852174'

  # github.com/PuppyBongos/standing-desk-app was verified as official when first introduced to the cask
  url "https://github.com/PuppyBongos/standing-desk-app/releases/download/v1.1/Standing-Desk-App-#{version}.zip"
  appcast 'https://github.com/PuppyBongos/standing-desk-app/releases.atom'
  name 'Standing Desk App'
  homepage 'https://sda.codana.me/'

  app 'Standing Desk App.app'

  zap trash: [
               '~/Library/Preferences/Puppy-Bongos.Standing-Desk-App.plist',
             ]
end
