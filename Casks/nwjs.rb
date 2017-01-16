cask 'nwjs' do
  version '0.19.4'
  sha256 'bd4fafbad72d0cd085595d53fb9a55c2caac8423d858e869c9a927a5c883063a'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '70675300ffb520d9e6180e80bc43e918477dce0d8c5c6b8be3ea2c205617d8ed'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
