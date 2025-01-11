cask "font-atkinson-hyperlegible-next" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/atkinsonhyperlegiblenext"
  name "Atkinson Hyperlegible Next"
  homepage "https://github.com/googlefonts/atkinson-hyperlegible-next"

  font "AtkinsonHyperlegibleNext-Italic[wght].ttf"
  font "AtkinsonHyperlegibleNext[wght].ttf"

  # No zap stanza required
end
