cask 'nwjs' do
  version '0.28.2'
  sha256 'b01ca673630ec0a3c5b1a81386bff4bb781a097f6c95ac6c7f1fe992dfd6d734'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'c329586162b5c11fd7f0a1acf95a2e845ddc19865b4b38c46e108ee97f81ced7'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
