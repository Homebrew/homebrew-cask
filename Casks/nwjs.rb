cask 'nwjs' do
  version '0.29.2'
  sha256 '51d47bfec0c93ddd42da1ca1696aa52e5ef77babac6beb59175df92e40049463'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '79849e1503cfdf18941cc7b10f8323f1a6993873b33f51e313fd3886db8d0026'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
