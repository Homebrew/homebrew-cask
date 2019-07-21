cask 'kiibohd-configurator' do
  version '1.0.1'
  sha256 '3a791deb24cd9bdb4c12292d040effa3b9532083dd795aa2f8f968a1de1a7700'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  appcast 'https://github.com/kiibohd/configurator/releases.atom'
  name 'Kiibohd Configurator'
  homepage 'https://kiibohd.github.io/wiki/#/Quickstart'

  app 'Kiibohd Configurator.app'
end
