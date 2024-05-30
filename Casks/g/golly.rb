cask "golly" do
  version "4.3"
  sha256 "6ffcaa252c9fa131050bfaf5f16aed1138b34a862c20e4aec5cb399c4593bf83"

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
