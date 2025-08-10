cask "font-cossette-texte" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/cossettetexte"
  name "Cossette Texte"
  homepage "https://github.com/cossette/cossette-fonts"

  font "CossetteTexte-Bold.ttf"
  font "CossetteTexte-Regular.ttf"

  # No zap stanza required
end
