cask 'emuflight-configurator' do
  version '0.2.12'
  sha256 '304766f2fc9b62b4324d9bccc8ed91614e110145c92332c996296dddd7d3ea51'

  url "https://github.com/emuflight/EmuConfigurator/releases/download/#{version}/emuflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/emuflight/EmuConfigurator/releases.atom'
  name 'Emuflight-Configurator'
  homepage 'https://github.com/emuflight/EmuConfigurator'

  app 'Emuflight Configurator.app'
end
