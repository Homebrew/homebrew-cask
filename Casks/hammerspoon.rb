cask :v1 => 'hammerspoon' do
  version '0.9.31'
  sha256 '418e08332989e577416d67ba66009330779593b2355e93ca142fcd8d829bbb75'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast 'https://github.com/Hammerspoon/hammerspoon/releases.atom'
  name 'Hammerspoon'
  homepage 'http://www.hammerspoon.org/'
  license :mit

  app 'Hammerspoon.app'
end
