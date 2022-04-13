cask "fantasy-map-generator" do
  version "1.3"
  sha256 "6aba1ba5b3c358fe4b09d2cbd7449bc603213cbc52de622250eaabaf8eae6d6d"

  url "https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/v#{version}/FMG-macos-x64.dmg",
      verified: "github.com/Azgaar/Fantasy-Map-Generator/"
  name "Azgaar's Fantasy Map Generator"
  desc "Generate interactive and highly customizable maps"
  homepage "https://azgaar.github.io/Fantasy-Map-Generator"

  livecheck do
    url "https://github.com/Azgaar/Fantasy-Map-Generator/wiki/Q&A#is-there-a-desktop-version"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/FMG[._-]macos[._-]x64.dmg}i)
  end

  app "Azgaar's Fantasy Map Generator.app"
end
