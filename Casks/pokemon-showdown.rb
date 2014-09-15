class PokemonShowdown < Cask
  version 'latest'
  sha256 :no_check

  url 'http://pokemonshowdown.com/files/pokemonshowdown-mac.zip'
  homepage 'http://pokemonshowdown.com'

  app 'Pokemon Showdown.app'
end
