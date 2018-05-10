cask 'nwjs' do
  version '0.30.3'
  sha256 '7ec2398a0690c5fcff73bfe71a807a4c3ee3a4f9082f3a9841f9a7c4dffad3a0'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '6475bfb810f4a3b977feb198bf4525f5609938891143ed84f328776545b48b59'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
