cask "nwjs" do
  version "0.52.1"
  sha256 "7b85b405914f1ef6291122cec61cb90a76ea93d808559f83e05264369d54781d"

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
