cask 'betaflight-configurator' do
  version '10.5.0'
  sha256 '275d13fd600d0e76f3dc307da04b6527c8239a02246460c3193d2ae0531a3fb9'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
