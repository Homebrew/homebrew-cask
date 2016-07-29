cask 'hammerspoon' do
  version '0.9.46'
  sha256 '20f7e81624b6f007d6fdd8944cab3d9ba48c36fd0b4f1405a590526b5d4859bc'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: '05766d2bc98e45972168b97d57c250b60c6450a49fba54ea55e8ea74cab6cdbf'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  accessibility_access true

  app 'Hammerspoon.app'
end
