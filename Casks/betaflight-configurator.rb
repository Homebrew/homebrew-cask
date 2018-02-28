cask 'betaflight-configurator' do
  version '10.2.0'
  sha256 '44d7010baa81936df9356a615b09547958bf40a732784bbbfa29882dc5e82e13'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom',
          checkpoint: 'e88921861461d85427771b15833f8069b6e88728512035575c282609cc66a5eb'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
