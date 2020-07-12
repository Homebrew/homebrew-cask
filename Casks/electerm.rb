cask 'electerm' do
  version '1.3.54'
  sha256 'afa5ba7b96d11d2ccf668a3ef8a48af897f810310d668becdff5f35c5f7f63bf'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
