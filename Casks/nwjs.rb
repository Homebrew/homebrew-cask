cask 'nwjs' do
  version '0.20.2'
  sha256 '7d877048cf9bb148e61c2b515f409402638d89fb4ae5d50a23a3ea8f1bc896ef'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '85e9c384318623a1ad4b5215b22857b93947f6919957387de80d9967d25f67df'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
