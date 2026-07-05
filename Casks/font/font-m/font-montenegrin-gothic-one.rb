cask "font-montenegrin-gothic-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montenegringothicone/MontenegrinGothicOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Montenegrin Gothic One"
  homepage "https://fonts.google.com/specimen/Montenegrin+Gothic+One"

  font "MontenegrinGothicOne-Regular.ttf"

  # No zap stanza required
end
