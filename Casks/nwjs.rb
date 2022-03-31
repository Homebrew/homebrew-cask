cask "nwjs" do
  version "0.63.0"
  sha256 "99748798896f4e71d9b9dfa613a9766e04783e372f55cb4bb2d169033a5489c1"

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  name "NW.js"
  desc "Call all Node.js modules directly from the DOM and Web Workers"
  homepage "https://nwjs.io/"

  livecheck do
    url "https://github.com/nwjs/nw.js"
    regex(/^nw[._-]v?(\d+(?:\.\d+)+)$/)
  end

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
