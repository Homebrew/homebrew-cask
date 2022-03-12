cask "pokefinder" do
  version "4.0.0"
  sha256 :no_check

  url "https://github.com/Admiral-Fish/PokeFinder/releases/latest/download/PokeFinder-macOS.tar.gz"
  name "PokéFinder"
  desc "Cross platform Pokémon RNG tool"
  homepage "https://github.com/Admiral-Fish/PokeFinder"

  app "PokeFinder.app"
end
