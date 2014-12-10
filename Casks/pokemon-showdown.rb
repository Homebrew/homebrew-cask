cask :v1 => 'pokemon-showdown' do
  version :latest
  sha256 :no_check

  url 'http://pokemonshowdown.com/files/pokemonshowdown-mac.zip'
  homepage 'http://pokemonshowdown.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Pokemon Showdown.app'
end
