cask "fantasy-map-generator" do
  version "1.3"
  sha256 "6aba1ba5b3c358fe4b09d2cbd7449bc603213cbc52de622250eaabaf8eae6d6d"

  url "https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/v#{version}/FMG-macos-x64.dmg",
      verified: "github.com/Azgaar/Fantasy-Map-Generator/"
  name "Azgaar's Fantasy Map Generator"
  homepage "https://azgaar.github.io/Fantasy-Map-Generator"

  app "Azgaar's Fantasy Map Generator.app"
end
