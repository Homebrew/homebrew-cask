cask "font-cossette-texte" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cossettetexte"
  name "Cossette Texte"
  homepage "https://fonts.google.com/specimen/Cossette+Texte"

  font "CossetteTexte-Bold.ttf"
  font "CossetteTexte-Regular.ttf"

  # No zap stanza required
end
