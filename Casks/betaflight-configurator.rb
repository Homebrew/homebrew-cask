cask 'betaflight-configurator' do
  version '10.3.0'
  sha256 'b1e5f32e48ff61d12343fe77165b241be1d180356fcd2ecdc94bf515e322db6b'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
