cask 'electerm' do
  version '1.3.28'
  sha256 'd8f5d5d22e1f0a74ea5a85b6ae98a1237546cb41e9bbe74b4574bb15d1e8170c'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
