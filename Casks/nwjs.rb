cask 'nwjs' do
  version '0.22.0'
  sha256 '9a73231118a13321201f2c6b246520db6218b045dc0de83731bc46c553e2d459'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '6e2bf900a45e631587a11229704292548b541f1f7b949c3d916ed9d12b2b1add'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
