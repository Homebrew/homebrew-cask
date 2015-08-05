cask :v1 => 'hammerspoon' do
  version '0.9.38'
  sha256 'a3575111fa028d4b23ea45598cd103ab884692ff349a511ac47398a346bf63cc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
