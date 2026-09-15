cask "font-montecarlo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montecarlo/MonteCarlo-Regular.ttf"
  name "MonteCarlo"
  homepage "https://fonts.google.com/specimen/MonteCarlo"

  font "MonteCarlo-Regular.ttf"

  # No zap stanza required
end
