cask "pokemon-tcg-live" do
  version "1.15.0,333109"
  sha256 :no_check

  url "https://installer.studio-prod.pokemon.com/installer/PokemonTCGLiveInstaller_Mac.dmg"
  name "Pokemon Trading Card Game Live"
  desc "Play the Pokémon Trading Card Game"
  homepage "https://tcg.pokemon.com/en-us/tcgl/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Pokemon TCG Live.app"

  zap trash: [
        "~/Library/Application Support/com.pokemon.pokemontcgl",
        "~/Library/Caches/com.pokemon.pokemontcgl",
        "~/Library/Logs/pokemon/Pokemon TCG Live",
        "~/Library/Preferences/com.pokemon.pokemontcgl.plist",
        "~/Library/Saved Application State/com.pokemon.pokemontcgl.savedState",
      ],
      rmdir: "~/Library/Logs/pokemon"

  caveats do
    requires_rosetta
    license "https://www.pokemon.com/us/terms-of-use/"
  end
end
