cask 'nwjs' do
  version '0.29.3'
  sha256 '5e06504dea2b499843800f37efed08ef6878d96c6484d20442ec8a4ad8cb5bd4'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'f5e796f0007d648e8d918e52c3cf6e1898cb9c60e7a0aba1983b0b386c25e8cb'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
