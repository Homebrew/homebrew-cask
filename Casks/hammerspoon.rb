cask :v1 => 'hammerspoon' do
  version '0.9.15'
  sha256 '9971ca2f3ac6a88f7f861624a545e46a30bdfb204efd098f54e3647efe439dc6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
