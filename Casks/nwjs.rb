cask "nwjs" do
  version "0.50.3"
  sha256 "0e65df4f09e267473734fa21272ba6b7d6440996b62124b12a5096a718d31078"

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
