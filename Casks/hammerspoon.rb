cask :v1 => 'hammerspoon' do
  version '0.9.39'
  sha256 '7d49bbadaced95005e003a0ea51a362812852e9fe91b4ab3bdb9332f9b79bf91'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
