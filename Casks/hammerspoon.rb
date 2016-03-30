cask 'hammerspoon' do
  version '0.9.45'
  sha256 'b6cdb1ebe49126d0cc2c7ba380b19ee824297c87b404a04f5236d1b631cf45b9'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'e977818cc6c0525dc00dcc8302d517143659c2deac33dde70e850090f148bed0'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  accessibility_access true

  app 'Hammerspoon.app'
end
