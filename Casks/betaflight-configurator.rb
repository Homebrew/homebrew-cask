cask 'betaflight-configurator' do
  version '10.6.0'
  sha256 '2e5e1a7d305e5a645d6707463f107c9b009e4682116af0be2c3bc0faa86345ab'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
