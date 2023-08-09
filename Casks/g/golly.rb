cask "golly" do
  version "4.2"
  sha256 "ef833166a90f8640f348eee6b614c08f93a5e48ee2070f4f556354f3f3013a7d"

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version.major_minor}/golly-#{version}-mac.dmg",
      verified: "downloads.sourceforge.net/golly/"
  name "Golly"
  desc "Explore Conway's Game of Life and other types of cellular automata"
  homepage "https://golly.sourceforge.io/"

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
