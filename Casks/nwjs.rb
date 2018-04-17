cask 'nwjs' do
  version '0.29.4'
  sha256 'e691ad7faeaa4ad53b8e14de2a3a84a1d5965d62cda1360849f64766c234ea54'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'f5e796f0007d648e8d918e52c3cf6e1898cb9c60e7a0aba1983b0b386c25e8cb'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
