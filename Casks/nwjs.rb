cask 'nwjs' do
  version '0.30.5'
  sha256 'bcfaafdbc09fec3b534592e6d17bc541ed9a5ab3c6f6a84c846e8b4f4e4f4886'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'f73ea518402f94d40a2b5128aa127f4953a9a7a2b50d9a134dd6480d13df3f8c'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
