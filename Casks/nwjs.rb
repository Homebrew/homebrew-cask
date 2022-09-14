cask "nwjs" do
  version "0.68.1"
  sha256 "ef52906bd783deb9fcee2668cfe1ab01a81c35d2b6fa840bac5ec62f150533f9"

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  name "NW.js"
  desc "Call all Node.js modules directly from the DOM and Web Workers"
  homepage "https://nwjs.io/"

  livecheck do
    url "https://github.com/nwjs/nw.js"
    regex(/^nw[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
