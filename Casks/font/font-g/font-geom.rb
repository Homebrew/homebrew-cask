cask "font-geom" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/geom"
  name "Geom"
  homepage "https://github.com/ThanosPoulakidas/Geom"

  font "Geom-Italic[wght].ttf"
  font "Geom[wght].ttf"

  # No zap stanza required
end
