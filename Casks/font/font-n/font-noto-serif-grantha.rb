cask "font-noto-serif-grantha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgrantha/NotoSerifGrantha-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Grantha"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Grantha"

  font "NotoSerifGrantha-Regular.ttf"

  # No zap stanza required
end
