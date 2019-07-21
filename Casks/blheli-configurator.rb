cask 'blheli-configurator' do
  version '1.1.0'
  sha256 'e9bfa5d3848e6a04c553534bb59276a0a71a5c190025d2e0a1e692ee02865ac9'

  url "https://github.com/blheli-configurator/blheli-configurator/releases/download/#{version}/BLHeli-Configurator_macOS_#{version}.dmg"
  appcast 'https://github.com/blheli-configurator/blheli-configurator/releases.atom'
  name 'BLHeli Configurator'
  homepage 'https://github.com/blheli-configurator/blheli-configurator'

  app 'BLHeli Configurator.app'
end
