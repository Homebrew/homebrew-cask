cask "extraterm" do
  version "0.62.0"
  sha256 "e1e81b420996b4c3ee5f60f956abb3d05cd81a69163876cedea240fe469e6d84"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extratermqt-#{version}-darwin-x64.zip",
      verified: "github.com/sedwards2009/extraterm/"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
