cask :v1 => 'hammerspoon' do
  version '0.9.32'
  sha256 '9b30fcf132a636a5b7810069a3c77dcee81c19f61e88e22219ea6fb680d764d7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
