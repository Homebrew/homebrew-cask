cask 'betaflight-configurator' do
  version '10.1.0'
  sha256 '83d8c05ecb22e74005a2bfcf33b76ac42fda159084f30765267518eb6414e276'

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/Betaflight-Configurator_macOS_#{version}.dmg"
  appcast 'https://github.com/betaflight/betaflight-configurator/releases.atom',
          checkpoint: 'c2eea9f01c72232e0fc4a394a637bdc60bbff8ecb461c1c64ca1ba175564cb0f'
  name 'Betaflight-Configurator'
  homepage 'https://github.com/betaflight/betaflight-configurator'

  app 'Betaflight Configurator.app'
end
