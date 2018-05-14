cask 'nwjs' do
  version '0.30.4'
  sha256 'ed621009bb9af8b1947ac1f65c98230b266b5871f789b04fddaffdee0b49113e'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '53edebfe022c416a405cf955bfa4dc66d4f6aa89dcb9ed6c4947b518954e8f18'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
