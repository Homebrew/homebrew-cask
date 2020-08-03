cask "macintoshjs" do
  version "1.0.5"
  sha256 "8bd519f7a95d024861da8e829a916cc7a1b5ebf6103413271250988b8a9c0743"

  url "https://github.com/felixrieseberg/macintosh.js/releases/download/v#{version}/macintosh.js-darwin-x64-#{version}.zip"
  appcast "https://github.com/felixrieseberg/macintosh.js/releases.atom"
  name "macintosh.js"
  homepage "https://github.com/felixrieseberg/macintosh.js"

  app "macintosh.js.app"

  zap trash: [
    "~/Library/Application Support/macintosh.js",
    "~/Library/Preferences/com.felixrieseberg.macintoshjs.plist",
    "~/Library/Saved Application State/com.felixrieseberg.macintoshjs.savedState",
  ]
end
