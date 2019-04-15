cask 'betaflight-configurator' do
  version '10.5.1'
  sha256 '6ee33a722fa5d86e369676ecea4968a347fe5df923052ecc469ae70ab7e582c7'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
