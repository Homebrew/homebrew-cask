cask "freeciv21" do
  version "3.0"
  sha256 "5fd18f938b9f3f00e8d3865dc05c6aff59267542f629cfd9c78cf12d9ac233b9"

  url "https://github.com/longturn/freeciv21/releases/download/v#{version}/Freeciv21-v#{version}.dmg"
  name "Freeciv21"
  desc "Is an empire-building strategy game inspired by the history of human civilization. It takes its roots in the well-known FOSS game Freeciv and extends it for more fun, with a revived focus on competitive multiplayer environments"
  homepage "https://github.com/longturn/freeciv21"

  app "Freeciv21.app"
end
