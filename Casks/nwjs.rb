cask 'nwjs' do
  version '0.28.1'
  sha256 '3f8b6807d4afbcfbd74a060ee5a70f05d4fe36dc18035fe31eaabf72abbc8b97'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '4cea2e623c90f01eb583758d33e94fb91cd73f194b97e6c334490fd2f39a1e6c'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
