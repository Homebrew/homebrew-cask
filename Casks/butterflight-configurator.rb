cask 'butterflight-configurator' do
  version '10.4.1'
  sha256 '165c0828874317b47d685484e0ca7248fb2410381b547b48e6281184f95407fd'

  url "https://github.com/ButterFlight/butterflight-configurator/releases/download/v#{version}/butterflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/ButterFlight/butterflight-configurator/releases.atom',
          checkpoint: 'e128334749b5b1ad09f317354c98aff6492fc17c9399aa842dcf907c1a165786'
  name 'ButterFlight Configurator'
  homepage 'https://github.com/ButterFlight/butterflight-configurator'

  app 'ButterFlight Configurator.app'
end
