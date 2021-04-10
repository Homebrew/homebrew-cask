cask "nwjs" do
  version "0.52.2"
  sha256 "8a2bfe23c9ff6e83787ca7fc7a2ebd1d1c2942d76893ca7898f0aad67f3a436a"

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
