cask "golly" do
  version "5.1"
  sha256 "7bbf70d3bfbd7fee3f4fb304bd3dafe3b5f70cfa787da47dfaa840504cc364d7"

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version.major_minor}/golly-#{version}-mac.dmg"
  name "Golly"
  desc "Explore Conway's Game of Life and other types of cellular automata"
  homepage "https://golly.sourceforge.io/"

  depends_on :macos

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"

  zap trash: [
    "~/Library/Application Support/Golly",
    "~/Library/Preferences/net.sourceforge.golly.plist",
    "~/Library/Saved Application State/net.sourceforge.golly.savedState",
  ]
end
