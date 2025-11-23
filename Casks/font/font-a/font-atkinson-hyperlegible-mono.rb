cask "font-atkinson-hyperlegible-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/atkinsonhyperlegiblemono"
  name "Atkinson Hyperlegible Mono"
  homepage "https://fonts.google.com/specimen/Atkinson+Hyperlegible+Mono"

  font "AtkinsonHyperlegibleMono-Italic[wght].ttf"
  font "AtkinsonHyperlegibleMono[wght].ttf"

  # No zap stanza required
end
