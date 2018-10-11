cask 'nwjs' do
  version '0.33.4'
  sha256 'd8a17742767f48f72f3ea1bd31b09fe3ca55cccae8a965a9db347a7c0fe30a8b'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
