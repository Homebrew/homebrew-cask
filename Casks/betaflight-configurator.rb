cask 'betaflight-configurator' do
  version '10.3.1'
  sha256 '54c44d2d0ea22ad47e04341a8d85fbe49c13b7df9cf65355ec940928daa57403'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
