cask 'betaflight-configurator' do
  version '10.5.1'
  sha256 '22701436e2049ee80d439f79c9cd4a4ce40027c103b6fec4432e5aa3883dffdf'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
