cask 'hammerspoon' do
  version '0.9.47'
  sha256 '666077b428899d3e9796c8f2637d3209f822bcb52f7be796b78c2fd884557daa'

  # github.com/Hammerspoon/hammerspoon was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: '285cfb09cf55440da21cd2f0a478a0261722a1701b58d0de6e20e7d376b6c138'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  accessibility_access true

  app 'Hammerspoon.app'
end
