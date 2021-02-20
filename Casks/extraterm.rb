cask "extraterm" do
  version "0.58.0"
  sha256 "f3e58de27b323b4e5d292e6a59ab96b5492023a68b9a3d2a4df255ebf3690022"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip",
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
