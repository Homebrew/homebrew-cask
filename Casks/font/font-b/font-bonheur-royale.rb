cask "font-bonheur-royale" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bonheurroyale/BonheurRoyale-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bonheur Royale"
  homepage "https://fonts.google.com/specimen/Bonheur+Royale"

  font "BonheurRoyale-Regular.ttf"

  # No zap stanza required
end
