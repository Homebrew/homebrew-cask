cask "nwjs" do
  arch arm: "arm64", intel: "x64"

  version "0.82.0"
  sha256 arm:   "d2f38741cd6065e255aab6f947a8a1d417e59b2d6419a03f7ac45ac863621803",
         intel: "111b51501d443b042efca94b8a668e35290964d87de9ce0af8ce6374affea82f"

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-#{arch}.zip"
  name "NW.js"
  desc "Call all Node.js modules directly from the DOM and Web Workers"
  homepage "https://nwjs.io/"

  livecheck do
    url "https://github.com/nwjs/nw.js"
    regex(/^nw[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "nwjs-sdk-v#{version}-osx-#{arch}/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-#{arch}/nwjc"

  zap trash: [
    "~/Library/Application Support/nwjs",
    "~/Library/Caches/nwjs",
    "~/Library/Preferences/io.nwjs.nwjs.plist",
    "~/Library/Saved Application State/io.nwjs.nwjs.savedState",
  ]
end
