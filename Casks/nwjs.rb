cask 'nwjs' do
  version '0.31.0'
  sha256 'dead879c538127d5b5d60ec611f12cbf3e0cca68ffc3ace38ee1cdfed1f8c4f0'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '346668cc9ea36ee468fc20be820ccc4fb84974568f0fd30158e1f7cee81477b5'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
