cask :v1 => 'pokemon-showdown' do
  version :latest
  sha256 :no_check

  url 'http://pokemonshowdown.com/files/pokemonshowdown-mac.zip'
  homepage 'http://pokemonshowdown.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pokemon Showdown.app'
end
