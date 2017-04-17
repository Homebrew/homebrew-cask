cask :v1 => 'pokemon-tcgo' do
	version :latest
	sha256 :no_check
	
	url 'http://tcgo-installer.s3.amazonaws.com/PokemonInstaller_Mac.dmg'
	name 'Pokemon Trading Card Game Online'
	homepage 'http://www.pokemon.com/uk/pokemon-tcg/play-online/'
	license :freemium
	
	installer :manual => 'The Pokémon Online Trading Card Game Installer.app'
end