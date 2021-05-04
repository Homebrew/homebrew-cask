cask "nwjs" do
  version "0.53.0"
  sha256 "f3e35ce255a9f0b6a0dba7066069a591c1aafe7014141348c4f83b1b4d26e083"

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
