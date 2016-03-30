cask 'pokemon-showdown' do
  version :latest
  sha256 :no_check

  url 'https://pokemonshowdown.com/files/pokemonshowdown-mac.zip'
  name 'Pokémon Showdown'
  homepage 'http://pokemonshowdown.com'
  license :mit

  app 'Pokemon Showdown.app'
end
