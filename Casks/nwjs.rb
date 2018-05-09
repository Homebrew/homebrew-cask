cask 'nwjs' do
  version '0.30.2'
  sha256 '52d25d4211e3e9864d3d04ea48b188c0992ca428cc0f4fdb7d7e95a257b2bf23'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '7ce647329502ad57eba5bbda62901a15588b29fbd53d5e66138da698f3e24353'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
