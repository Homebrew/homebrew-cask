cask 'nwjs' do
  version '0.29.1'
  sha256 '72252467e889a5e827143aa9265c0d2f4ada7df1fb018f6d585112ebdb980a54'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: 'd0da83a6261b02ba0ae69c8538993e13c07e201f0280e3c7c279e8f3d4bc343c'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
