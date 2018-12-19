cask 'betaflight-configurator' do
  version '10.4.0'
  sha256 'f306f3978831ce7379e34ca102c2ecab298b4e87952874c93443e427185a04b9'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
