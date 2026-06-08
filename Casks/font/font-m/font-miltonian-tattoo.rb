cask "font-miltonian-tattoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miltoniantattoo/MiltonianTattoo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miltonian Tattoo"
  homepage "https://fonts.google.com/specimen/Miltonian+Tattoo"

  font "MiltonianTattoo-Regular.ttf"

  # No zap stanza required
end
