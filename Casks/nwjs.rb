cask 'nwjs' do
  version '0.26.6'
  sha256 'b03322a242e52265c597f9828b795fa05f516d762de9593dda1f957c0819ea03'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'db1edc125f82a85ef561fd2507f655d1fac448109d6d22dbd25a0f9ed773df46'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
