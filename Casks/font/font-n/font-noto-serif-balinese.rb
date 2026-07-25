cask "font-noto-serif-balinese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifbalinese/NotoSerifBalinese-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Balinese"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Balinese"

  font "NotoSerifBalinese-Regular.ttf"

  # No zap stanza required
end
