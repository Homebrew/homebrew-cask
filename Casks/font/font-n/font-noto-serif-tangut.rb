cask "font-noto-serif-tangut" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftangut/NotoSerifTangut-Regular.ttf"
  name "Noto Serif Tangut"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Tangut"

  font "NotoSerifTangut-Regular.ttf"

  # No zap stanza required
end
