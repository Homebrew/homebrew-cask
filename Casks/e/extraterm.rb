cask "extraterm" do
  version "0.81.2"
  sha256 "1b8fccb25a46083f16bafc3032a9c4faf317137720ebdca8edb72211d9be682d"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/ExtratermQt_#{version}.dmg",
      verified: "github.com/sedwards2009/extraterm/"
  name "Extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm*.plist",
  ]

  caveats do
    requires_rosetta
  end
end
