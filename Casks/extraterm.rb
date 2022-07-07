cask "extraterm" do
  version "0.64.0"
  sha256 "f289799b3b91a9863bfebb28d6af9a15d474f953ac68d66f1bcdfe740d4fa977"

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
