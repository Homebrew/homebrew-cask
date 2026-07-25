cask "font-noto-serif-ottoman-siyaq" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifottomansiyaq/NotoSerifOttomanSiyaq-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Ottoman Siyaq"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Ottoman+Siyaq"

  font "NotoSerifOttomanSiyaq-Regular.ttf"

  # No zap stanza required
end
