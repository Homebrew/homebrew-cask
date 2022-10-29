cask "extraterm" do
  version "0.67.0"
  sha256 "6968aa2f656257ae0af9973abd3b5bbc5274596ab7b2f47e15af6efcd07a6101"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/ExtratermQt_#{version}.dmg",
      verified: "github.com/sedwards2009/extraterm/"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
