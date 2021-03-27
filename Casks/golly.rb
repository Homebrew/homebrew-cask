cask "golly" do
  version "4.0.1"
  sha256 "5e4e14c06ac979da93e8b99d0203073c759c8a540ac84ff81b265aa5777937c0"

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version.major_minor}/Golly-#{version}-Mac.dmg",
      verified: "downloads.sourceforge.net/golly/"
  appcast "https://sourceforge.net/projects/golly/rss?path=/golly"
  name "Golly"
  desc "Explore Conway's Game of Life and other types of cellular automata"
  homepage "https://golly.sourceforge.io/"

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
