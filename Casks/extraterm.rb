cask "extraterm" do
  version "0.67.0"
  sha256 "3ada5d7281fdb3f60a64ed99b4323e52fcffb135eed1672823e153db6a6c12cc"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extratermqt-#{version}-macos-x64.zip",
      verified: "github.com/sedwards2009/extraterm/"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "extratermqt-#{version}-macos-x64/ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
