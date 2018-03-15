cask 'betaflight-configurator' do
  version '10.2.0'
  sha256 '44d7010baa81936df9356a615b09547958bf40a732784bbbfa29882dc5e82e13'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom',
          checkpoint: 'b8e52a48f938b77f1b674932f546d148f0ffdf915edb1461eb3e7ea3e6a7a390'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
