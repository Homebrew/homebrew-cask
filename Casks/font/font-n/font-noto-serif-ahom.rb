cask "font-noto-serif-ahom" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifahom/NotoSerifAhom-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Ahom"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Ahom"

  font "NotoSerifAhom-Regular.ttf"

  # No zap stanza required
end
