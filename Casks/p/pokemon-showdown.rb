cask "pokemon-showdown" do
  version "0.11,bf46c879d0"
  sha256 :no_check

  url "https://pokemonshowdown.com/files/pokemonshowdown-mac.zip"
  name "Pokémon Showdown"
  homepage "https://pokemonshowdown.com/"

  deprecate! date: "2025-06-07", because: :discontinued

  app "Pokemon Showdown.app"

  caveats do
    requires_rosetta
  end
end
