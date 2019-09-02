cask 'pokemon-trading-card-game-online' do
  version :latest
  sha256 :no_check

  # tcgo-installer.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://tcgo-installer.s3.amazonaws.com/PokemonInstaller_Mac.dmg'
  name 'Pokemon Trading Card Game Online'
  homepage 'https://www.pokemon.com/us/pokemon-tcg/play-online/'

  app 'Pokemon Trading Card Game Online.app'

  preflight do
    FileUtils.cd staged_path do
      system_command '/usr/bin/tar', args: ['-xf', 'The Pokémon Online Trading Card Game Installer.app/Contents/Resources/packages/pokemon.tar', 'pokemon.tar.gz']
      system_command '/usr/bin/tar', args: ['-xzf', 'pokemon.tar.gz']
      FileUtils.rm_rf 'pokemon.tar.gz'
    end
  end
end
