cask 'butterflight-configurator' do
  version '10.3.0'
  sha256 '5d7c56abe689e26e03370733187faa42eb54e8de9468018532029cc8c8d3da41'

  url "https://github.com/ButterFlight/butterflight-configurator/releases/download/v#{version}/butterflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/ButterFlight/butterflight-configurator/releases.atom',
          checkpoint: '44019481db843133281f89797a56e6ce2acd37961353b571f918311fc489f3e3'
  name 'ButterFlight Configurator'
  homepage 'https://github.com/ButterFlight/butterflight-configurator'

  app 'ButterFlight Configurator.app'
end
