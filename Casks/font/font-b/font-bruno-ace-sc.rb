cask "font-bruno-ace-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/brunoacesc/BrunoAceSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bruno Ace SC"
  homepage "https://fonts.google.com/specimen/Bruno+Ace+SC"

  font "BrunoAceSC-Regular.ttf"

  # No zap stanza required
end
