cask 'liri-browser' do
  version '0.3'
  sha256 'cdb39c6470f9e0a7b74e42dc31787172d2dacec6b074b2c3ecbce1b7b79dee7b'

  url "https://github.com/liri-project/liri-browser/releases/download/v#{version}/liri-browser-#{version}-osx.zip"
  appcast 'https://github.com/liri-project/liri-browser/releases.atom',
          checkpoint: '45f8016ad9e5023a21ed430111f62701cc24699a51276d814a98c575488b6597'
  name 'Liri Browser'
  homepage 'https://liri-browser.github.io/'
  license :gpl

  app 'Liri Browser.app'
end
