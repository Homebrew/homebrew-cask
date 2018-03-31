cask 'nwjs' do
  version '0.29.3'
  sha256 '5e06504dea2b499843800f37efed08ef6878d96c6484d20442ec8a4ad8cb5bd4'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '4beb8d193f90dc519bba712fa4b2e92eefe0cdc913151eaa22fc91614b8f315f'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
