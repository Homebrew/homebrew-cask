cask "macintoshjs" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "0df67f2a3c8398f31840c54fad030b2ff9400fb1311774771ada3d8d9990443f",
         intel: "1da79360d3c86665657692c4476343ad07b7cf3a9b2588f70833cf0f7caa4a82"

  url "https://github.com/felixrieseberg/macintosh.js/releases/download/v#{version}/macintosh.js-darwin-#{arch}-#{version}.zip"
  name "macintosh.js"
  desc "Virtual Apple Macintosh with System 8, running in Electron"
  homepage "https://github.com/felixrieseberg/macintosh.js"

  app "macintosh.js.app"

  zap trash: [
    "~/Library/Application Support/macintosh.js",
    "~/Library/Preferences/com.felixrieseberg.macintoshjs.plist",
    "~/Library/Saved Application State/com.felixrieseberg.macintoshjs.savedState",
    "~/macintosh.js",
  ]
end
