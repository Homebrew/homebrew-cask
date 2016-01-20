cask 'hammerspoon' do
  version '0.9.44'
  sha256 '9a6d40b8c3abd692093232860ca30640ad156ab4ad7f50b952c509f62cd57333'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom',
          checkpoint: 'd8329b0a7606b9599c6779ea111929cbeac3f2aaef6b059fc352cf5a0f1f9e96'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
