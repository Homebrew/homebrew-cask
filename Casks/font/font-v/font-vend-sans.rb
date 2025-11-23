cask "font-vend-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vendsans"
  name "Vend Sans"
  homepage "https://fonts.google.com/specimen/Vend+Sans"

  font "VendSans-Italic[wght].ttf"
  font "VendSans[wght].ttf"

  # No zap stanza required
end
