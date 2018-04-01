cask 'nwjs' do
  version '0.29.0'
  sha256 'e1d6cb76fdd11864593a418396b594f15e917a66126331a81d0b339737e8ac6f'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '3713cd196faf67492aab2a6542797425e69bb09c5d361b12c895cc6b1ba99b8d'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
