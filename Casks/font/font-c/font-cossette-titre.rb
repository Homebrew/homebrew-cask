cask "font-cossette-titre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cossettetitre"
  name "Cossette Titre"
  homepage "https://fonts.google.com/specimen/Cossette+Titre"

  font "CossetteTitre-Bold.ttf"
  font "CossetteTitre-Regular.ttf"

  # No zap stanza required
end
