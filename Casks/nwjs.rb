cask 'nwjs' do
  version '0.42.6'
  sha256 '9d428fc330d6dff3848276e1c3c32171ed8f26325d44b1d1d1c75b0efb103463'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
