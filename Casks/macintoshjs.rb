cask "macintoshjs" do
  version "1.0.2"
  sha256 "7d6494b14cb895e6540b3a09608269bba2b97a3d8bf784d56c45f6da558bffbf"

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
