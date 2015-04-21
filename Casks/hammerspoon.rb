cask :v1 => 'hammerspoon' do
  version '0.9.29'
  sha256 '2301c88f0199b2c483adc71e2581eef980b8fd9f1171166be979c9fdbe252790'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
