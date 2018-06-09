cask 'nwjs' do
  version '0.31.1'
  sha256 '58921e3a2475741e6de38c359f0c645ffc03c91811df4cfde550068b8ca804fc'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'dfc962133047f92f4bc1675a81e44024a9767a07b1241e53e1d940acb4a15b9c'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
