cask :v1 => 'hammerspoon' do
  version '0.9.40'
  sha256 'cf17ceae3529057ddd76b00cbc285b6710c42265af2e53d4aa0bdce3154fb70d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
