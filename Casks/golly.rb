cask "golly" do
  version "4.1"
  sha256 "6789fe3c79e44871bee194997145f5c6a753726e216849d4b46d8581f335b2ce"

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version.major_minor}/golly-#{version}-mac.dmg",
      verified: "downloads.sourceforge.net/golly/"
  name "Golly"
  desc "Explore Conway's Game of Life and other types of cellular automata"
  homepage "https://golly.sourceforge.io/"

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
