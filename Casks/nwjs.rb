cask 'nwjs' do
  version '0.34.0'
  sha256 '65e5a4212a34bb8d27159f3c349346ab1843ed790b07b6fff21c14744371f58e'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
