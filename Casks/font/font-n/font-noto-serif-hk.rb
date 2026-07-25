cask "font-noto-serif-hk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifhk/NotoSerifHK%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif HK"
  homepage "https://fonts.google.com/specimen/Noto+Serif+HK"

  font "NotoSerifHK[wght].ttf"

  # No zap stanza required
end
