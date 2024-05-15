cask "font-nixie-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nixieone/NixieOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nixie One"
  homepage "https://fonts.google.com/specimen/Nixie+One"

  font "NixieOne-Regular.ttf"

  # No zap stanza required
end
