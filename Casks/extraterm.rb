cask "extraterm" do
  version "0.63.0"
  sha256 "16ec43adfdba143bc33fff7791d50547adf1cdf8dfb6bbc72c73f3d8eb068ac4"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extratermqt-#{version}-darwin-x64.zip",
      verified: "github.com/sedwards2009/extraterm/"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "extratermqt-#{version}-darwin-x64/ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
