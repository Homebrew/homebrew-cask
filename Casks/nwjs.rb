cask 'nwjs' do
  version '0.30.1'
  sha256 '124bc543f0697fac237b1942d0b88073d210933dd4e9fbf9356a1f35f6821342'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '8fe082d1e902c0ebcd1fbc86b4158e094060e0907eb0ad7e8f6eded589e8ce35'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
