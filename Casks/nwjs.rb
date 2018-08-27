cask 'nwjs' do
  version '0.32.4'
  sha256 '68cc9dfa7074bf1a294d39531d207b9cfd2ee4c6d95e6c7e8545d0a1040daa8f'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
