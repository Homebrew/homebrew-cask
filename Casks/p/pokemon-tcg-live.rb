cask "pokemon-tcg-live" do
  version "1.25.0,468448"
  sha256 :no_check

  url "https://installer.studio-prod.pokemon.com/installer/PokemonTCGLiveInstaller_Mac.dmg"
  name "Pokemon Trading Card Game Live"
  desc "Play the Pokémon Trading Card Game"
  homepage "https://tcg.pokemon.com/en-us/tcgl/"

  livecheck do
    url "https://cdn.studio-prod.pokemon.com/rainier/updater/StandaloneOSX/ReleaseNotes/notes_en.json"
    regex(/^Version\s+v?(\d+(?:\.\d+)+)\s+\((\d+)\)$/i)
    strategy :json do |json, regex|
      match = json["Version"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
    license "https://www.pokemon.com/us/terms-of-use/"
  end
end
