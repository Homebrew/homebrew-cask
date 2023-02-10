cask "pokemon-trading-card-game-online" do
  version "2.95.0.5815"
  sha256 :no_check

  url "https://tcgo-installer.s3.amazonaws.com/PokemonInstaller_Mac.dmg",
      verified: "https://tcgo-installer.s3.amazonaws.com/"
  name "Pokemon Trading Card Game Online"
  desc "Play the Pokemon TCG online"
  homepage "https://www.pokemon.com/us/pokemon-tcg/play-online/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Pokemon Trading Card Game Online.app"

  zap trash: [
    "~/Library/Application Support/unity.The Pokémon Company International.Pokemon Trading Card Game Online",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.The Pokémon Company International.Pokemon Trading Card Game Online",
    "~/Library/Preferences/unity.The Pokémon Company International.Pokemon Trading Card Game Online.plist",
  ]
end
