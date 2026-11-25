cask "font-tiny5-duo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tiny5duo"
  name "Tiny5 Duo"
  homepage "https://fonts.google.com/specimen/Tiny5+Duo"

  font "Tiny5Duo-Italic[BLED,JITT,ROND,wdth,wght].ttf"
  font "Tiny5Duo[BLED,JITT,ROND,wdth,wght].ttf"

  zap :not_required
end
