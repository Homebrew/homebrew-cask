cask 'nwjs' do
  version '0.23.5'
  sha256 'a15b5c21620e1c5f2b01fa9d1e22ad43445674b34956d604da99069cca4adbce'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '46bfcfdf39ad465a95bb3437af5d6a3393aa7701f1dd739779e461b781655db6'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
