cask "font-gravitas-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gravitasone/GravitasOne.ttf",
      verified: "github.com/google/fonts/"
  name "Gravitas One"
  homepage "https://fonts.google.com/specimen/Gravitas+One"

  font "GravitasOne.ttf"

  # No zap stanza required
end
