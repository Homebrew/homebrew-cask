cask 'electerm' do
  version '1.3.4'
  sha256 'f1c7e0ff75741f83be52a5ed7e2ade1f861190b9c875dfddca38512ca81f09e9'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
