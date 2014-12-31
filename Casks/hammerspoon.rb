cask :v1 => 'hammerspoon' do
  version '0.9.10'
  sha256 '671ef52625bfc885915d98523dee77a75fdfafa5194eedba5c78e07f0e7fe3b9'

  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
