cask "font-libre-bodoni" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/librebodoni"
  name "Libre Bodoni"
  homepage "https://fonts.google.com/specimen/Libre+Bodoni"

  font "LibreBodoni-Italic[wght].ttf"
  font "LibreBodoni[wght].ttf"

  # No zap stanza required
end
