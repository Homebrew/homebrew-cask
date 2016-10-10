cask 'firebird' do
  version '0.30'
  sha256 'ec23275a9007fa180dacc7ae23348f9af7afa048df1c9c84b85ed8524447456b'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom',
          checkpoint: '815103264eeb275c1836c2bc31770f422caac1395fca2f7c93f3b22348694879'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'

  app 'firebird.app'
end
