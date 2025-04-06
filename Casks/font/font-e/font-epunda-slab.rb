cask "font-epunda-slab" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/epundaslab"
  name "Epunda Slab"
  homepage "https://github.com/typofactur/epundaslab"

  font "EpundaSlab-Italic[wght].ttf"
  font "EpundaSlab[wght].ttf"

  # No zap stanza required
end
