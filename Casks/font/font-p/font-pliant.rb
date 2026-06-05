cask "font-pliant" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/pliant"
  name "Pliant"
  homepage "https://github.com/TheJonassss/Pliant"

  font "Pliant-Italic[wdth,wght].ttf"
  font "Pliant[wdth,wght].ttf"

  # No zap stanza required
end
