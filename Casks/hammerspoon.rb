cask :v1 => 'hammerspoon' do
  version '0.9.23'
  sha256 '479598ad38fe857e0afdb6cd497cc6078d5e7e9fe13cf9042ae7f069ae23f7c9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
