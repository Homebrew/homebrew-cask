cask :v1 => 'hammerspoon' do
  version '0.9.36'
  sha256 'e2a72b1a02031509a7abdf64ba01335b28abe03d95ba52fa6bcb705f277b28e9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
