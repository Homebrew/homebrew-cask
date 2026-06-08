cask "font-noto-serif-tamil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notoseriftamil"
  name "Noto Serif Tamil"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Tamil"

  font "NotoSerifTamil-Italic[wdth,wght].ttf"
  font "NotoSerifTamil[wdth,wght].ttf"

  # No zap stanza required
end
