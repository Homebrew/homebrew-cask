cask "golly" do
  version "4.3"
  sha256 "9e188f474f6a01cf4c4ddff79d562c8a074ec436cf1cc39503d34a4bd53617c3"

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
