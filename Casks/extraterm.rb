cask "extraterm" do
  version "0.66.0"
  sha256 "b0ef8d5881a74366719af2b2fdfe178326b039748b3c7bed9d0c1bcf803d6902"

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
