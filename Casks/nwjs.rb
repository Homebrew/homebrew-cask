cask 'nwjs' do
  version '0.28.3'
  sha256 '10f822747f47dbdb2e1bebe3912bc3f38c5f14f9e5a18fa7e63d89624dfbe86f'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '1f4a1b2c975ab463889eb56256b1508fc6c12782d23ca68254886a5e534326c2'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
