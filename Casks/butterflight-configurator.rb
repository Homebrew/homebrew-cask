cask 'butterflight-configurator' do
  version '10.4.2'
  sha256 'e5843174417970c483bddc2356acf6bd3e8cefd7791ac50882838615abcb41a2'

  url "https://github.com/ButterFlight/butterflight-configurator/releases/download/v#{version}/butterflight-configurator_#{version}_macOS.dmg"
  appcast 'https://github.com/ButterFlight/butterflight-configurator/releases.atom',
          checkpoint: 'ac5b1ae1d0d06dd4327a71dfac7cef6529f3f49fe9baa9b6c8a8336d0366496d'
  name 'ButterFlight Configurator'
  homepage 'https://github.com/ButterFlight/butterflight-configurator'

  app 'ButterFlight Configurator.app'
end
