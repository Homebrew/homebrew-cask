cask 'electerm' do
  version '1.0.26'
  sha256 '7cac0f2db9123d55928b28c908b2ca45cf4600d0f14772759920ce3f0900819c'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
