cask "font-atkinson-hyperlegible-next" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/atkinsonhyperlegiblenext"
  name "Atkinson Hyperlegible Next"
  homepage "https://fonts.google.com/specimen/Atkinson+Hyperlegible+Next"

  font "AtkinsonHyperlegibleNext-Italic[wght].ttf"
  font "AtkinsonHyperlegibleNext[wght].ttf"

  # No zap stanza required
end
