cask "font-montecarlo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montecarlo/MonteCarlo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "MonteCarlo"
  homepage "https://fonts.google.com/specimen/MonteCarlo"

  font "MonteCarlo-Regular.ttf"

  # No zap stanza required
end
