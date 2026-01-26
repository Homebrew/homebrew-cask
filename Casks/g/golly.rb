cask "golly" do
  version "5.0"
  sha256 "cf03c5b7941566f6222a519b984b6a6cd6e6e2107f61a31995be79a8b50c304e"

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version.major_minor}/golly-#{version}-mac.dmg",
      verified: "downloads.sourceforge.net/golly/"
  name "Golly"
  desc "Explore Conway's Game of Life and other types of cellular automata"
  homepage "https://golly.sourceforge.io/"

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"

  zap trash: [
    "~/Library/Application Support/Golly",
    "~/Library/Preferences/net.sourceforge.golly.plist",
    "~/Library/Saved Application State/net.sourceforge.golly.savedState",
  ]
end
