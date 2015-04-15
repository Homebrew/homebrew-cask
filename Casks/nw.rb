cask :v1 => 'nw' do
  version '0.12.1'
  sha256 'e0c08ca3a3057310a1d84c1b288a313464c1922ea3cc00dd75991df62d90e845'

  url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-x64.zip"
  name 'NW.js'
  homepage 'http://nwjs.io'
  license :mit

  binary "nwjs-v#{version}-osx-x64/nwjc"
  app "nwjs-v#{version}-osx-x64/nwjs.app"
end
