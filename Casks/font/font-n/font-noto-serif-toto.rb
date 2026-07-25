cask "font-noto-serif-toto" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftoto/NotoSerifToto%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Toto"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Toto"

  font "NotoSerifToto[wght].ttf"

  # No zap stanza required
end
