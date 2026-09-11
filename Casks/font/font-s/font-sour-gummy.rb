cask "font-sour-gummy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/sourgummy"
  name "Sour Gummy"
  homepage "https://fonts.google.com/specimen/Sour+Gummy"

  font "SourGummy-Italic[wdth,wght].ttf"
  font "SourGummy[wdth,wght].ttf"

  # No zap stanza required
end
