cask 'nwjs' do
  version '0.31.4'
  sha256 'cb18cea2a1e46052e6dcc52d49b825dd32fe020e4bc0ea529fbdf1920bf7aba9'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
