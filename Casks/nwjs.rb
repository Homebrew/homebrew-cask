cask "nwjs" do
  version "0.50.2"
  sha256 "9a6056e098a5ef9b2b5850bb0af770ffab397d77b6a8c9d9a964b6b7f01696db"

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  name "NW.js"
  homepage "https://nwjs.io/"

  livecheck do
    url "https://github.com/nwjs/nw.js/releases"
    strategy :git
    regex(/^nw-v?(\d+(?:\.\d+)*)$/)
  end

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
