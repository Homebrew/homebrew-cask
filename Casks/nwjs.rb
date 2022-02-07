cask "nwjs" do
  version "0.61.0"
  sha256 "fec2abbac5917691697a69f02e0c867ac553e4aecd8b38904505b73b0ad06389"

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
