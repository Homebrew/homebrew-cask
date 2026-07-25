cask "font-rubik-80s-fade" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubik80sfade/Rubik80sFade-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik 80s Fade"
  homepage "https://fonts.google.com/specimen/Rubik+80s+Fade"

  font "Rubik80sFade-Regular.ttf"

  # No zap stanza required
end
