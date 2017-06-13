cask 'nwjs' do
  version '0.22.3'
  sha256 '998d4910db2b543cd076cfa359094ede299fae5f01d4f7ed22012c7d7c0c2f46'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'adcb86d3484bb11a74301223aedc17c632288b86adb46863ef9aed60d05df91b'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
