cask :v1 => 'hammerspoon' do
  version '0.9.42'
  sha256 '6b96a76c4c1927ef27bab9cf76c27de7da1f0a4b3c269eab79cebd82e06970bd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
