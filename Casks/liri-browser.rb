cask :v1 => 'liri-browser' do
  version '0.3'
  sha256 'cdb39c6470f9e0a7b74e42dc31787172d2dacec6b074b2c3ecbce1b7b79dee7b'

  url "https://github.com/liri-browser/liri-browser/releases/download/v#{version}/liri-browser-#{version}-osx.zip"
  name 'Liri Browser'
  homepage 'https://liri-browser.github.io/'
  license :gpl

  app 'Liri Browser.app'
end
