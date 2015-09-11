cask :v1 => 'pokemon-showdown' do
  version :latest
  sha256 :no_check

  url 'https://pokemonshowdown.com/files/pokemonshowdown-mac.zip'
  name 'Pokémon Showdown'
  homepage 'http://pokemonshowdown.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pokemon Showdown.app'
end
