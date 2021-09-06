cask "macintoshjs" do
  version "1.1.0"

  if Hardware::CPU.intel?
    sha256 "4ca41517f15c594e718da622074a2160754cb8f1293cb1fad908f6d0ae585384"

    url "https://github.com/felixrieseberg/macintosh.js/releases/download/v#{version}/macintosh.js-darwin-x64-#{version}.zip"
  else
    sha256 "0af95bbcc075f939d6c3e1fdcdab0d8da2760e5546aecfbc82767e326640740c"

    url "https://github.com/felixrieseberg/macintosh.js/releases/download/v#{version}/macintosh.js-darwin-arm64-#{version}.zip"
  end

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
