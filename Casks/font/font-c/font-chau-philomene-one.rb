cask "font-chau-philomene-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chauphilomeneone"
  name "Chau Philomene One"
  homepage "https://fonts.google.com/specimen/Chau+Philomene+One"

  font "ChauPhilomeneOne-Italic.ttf"
  font "ChauPhilomeneOne-Regular.ttf"

  # No zap stanza required
end
