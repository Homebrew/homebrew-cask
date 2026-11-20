cask "font-bonheur-royale" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bonheurroyale/BonheurRoyale-Regular.ttf"
  name "Bonheur Royale"
  homepage "https://fonts.google.com/specimen/Bonheur+Royale"

  font "BonheurRoyale-Regular.ttf"

  zap :not_required
end
