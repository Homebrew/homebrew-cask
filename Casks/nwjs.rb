cask "nwjs" do
  version "0.76.0"
  sha256 "e19b8966305795cecd46b8c7c8b10e92baf73deaf0eeba37a01b9ccdd76e488c"

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

  zap trash: [
    "~/Library/Application Support/nwjs",
    "~/Library/Caches/nwjs",
    "~/Library/Preferences/io.nwjs.nwjs.plist",
    "~/Library/Saved Application State/io.nwjs.nwjs.savedState",
  ]
end
