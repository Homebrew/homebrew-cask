cask 'nwjs' do
  version '0.28.0'
  sha256 '59cfa74fffd7302dea64ae2cb74f934c2f848729adcd31504dde36fc064f5e17'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '0be6f68a40d671723da453878cb82209720150b43854b24ae128d1cd59e925f0'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
