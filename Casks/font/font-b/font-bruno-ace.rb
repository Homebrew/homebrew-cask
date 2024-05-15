cask "font-bruno-ace" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/brunoace/BrunoAce-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bruno Ace"
  homepage "https://fonts.google.com/specimen/Bruno+Ace"

  font "BrunoAce-Regular.ttf"

  # No zap stanza required
end
