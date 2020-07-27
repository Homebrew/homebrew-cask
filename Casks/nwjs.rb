cask "nwjs" do
  version "0.47.0"
  sha256 "af29773d0227512a6a47d15aecf2d9c9a28e6ba01a1a4ad84bde3fb4d9afea79"

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast "https://github.com/nwjs/nw.js/releases.atom"
  name "NW.js"
  homepage "https://nwjs.io/"

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
