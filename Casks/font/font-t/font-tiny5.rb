cask "font-tiny5" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tiny5"
  name "Tiny5"
  homepage "https://fonts.google.com/specimen/Tiny5"

  font "Tiny5-Italic[BLED,JITT,ROND,wdth,wght].ttf"
  font "Tiny5[BLED,JITT,ROND,wdth,wght].ttf"

  zap :not_required
end
