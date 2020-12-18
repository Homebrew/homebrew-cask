cask "extraterm" do
  version "0.56.0"
  sha256 "f1e977ce64410674fe390855fdcbf9021e6de146db859020b38f5c15e21503bf"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip",
      verified: "github.com/sedwards2009/extraterm/"
  appcast "https://github.com/sedwards2009/extraterm/releases.atom"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
