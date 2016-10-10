cask 'nwjs' do
  version '0.17.5'
  sha256 '559f2fe78be7b1a83cf5176fb583155037f0ed25a0fa2b6e8c2735db87f297d9'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  name 'NW.js'
  homepage 'https://nwjs.io'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
