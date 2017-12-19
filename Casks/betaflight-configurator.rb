cask 'betaflight-configurator' do
  version '10.0.0'
  sha256 '13d49bfcb3b3941badd878804a9c29bbadb10305d78c6c8b0af7828cd77b3549'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/Betaflight-Configurator_macOS_#{version}.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom',
          checkpoint: '33c9bc1b45893305ec310e9d4707fdb4be532fb6faac72f8014d5903a6789d31'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
