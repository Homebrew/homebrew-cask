cask "macintoshjs" do
  version "1.0.6"
  sha256 "f1cf7e80c17f1ade18dcfde10d291d70f9e1c86762f42c1004dc7caa3717c2d0"

  url "https://github.com/felixrieseberg/macintosh.js/releases/download/v#{version}/macintosh.js-darwin-x64-#{version}.zip"
  appcast "https://github.com/felixrieseberg/macintosh.js/releases.atom"
  name "macintosh.js"
  desc "Virtual Apple Macintosh with System 8, running in Electron"
  homepage "https://github.com/felixrieseberg/macintosh.js"

  app "macintosh.js.app"

  zap trash: [
    "~/Library/Application Support/macintosh.js",
    "~/Library/Preferences/com.felixrieseberg.macintoshjs.plist",
    "~/Library/Saved Application State/com.felixrieseberg.macintoshjs.savedState",
  ]
end
