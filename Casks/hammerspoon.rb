cask :v1 => 'hammerspoon' do
  version '0.9.34'
  sha256 'a336a667088a0b2925a09740643a17e11e70e404611744f6a8b72db034ef37c4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
