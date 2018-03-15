cask 'butterflight-configurator' do
  version '10.2.0'
  sha256 'd69c6bd6024b6b5595e82de2acb3fa8e53d92acac7cfe2233927c845152fd40d'

  url "https://github.com/ButterFlight/butterflight-configurator/releases/download/v#{version}/butterflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/ButterFlight/butterflight-configurator/releases.atom',
          checkpoint: '0ede3dca5c9f5d9a8cff550a32b6e35cd2b6fb118c879c4269c920c01c322949'
  name 'ButterFlight Configurator'
  homepage 'https://github.com/ButterFlight/butterflight-configurator'

  app 'ButterFlight Configurator.app'
end
