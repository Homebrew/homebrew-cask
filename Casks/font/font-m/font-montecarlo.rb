cask "font-montecarlo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montecarlo/MonteCarlo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "MonteCarlo"
  desc "Perfect for an ornate look and a readable message"
  homepage "https://fonts.google.com/specimen/MonteCarlo"

  font "MonteCarlo-Regular.ttf"

  # No zap stanza required
end
