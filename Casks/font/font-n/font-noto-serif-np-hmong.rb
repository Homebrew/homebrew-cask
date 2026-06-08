cask "font-noto-serif-np-hmong" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifnphmong/NotoSerifNPHmong%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif NP Hmong"
  homepage "https://fonts.google.com/specimen/Noto+Serif+NP+Hmong"

  font "NotoSerifNPHmong[wght].ttf"

  # No zap stanza required
end
