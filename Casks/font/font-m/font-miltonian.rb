cask "font-miltonian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miltonian/Miltonian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miltonian"
  homepage "https://fonts.google.com/specimen/Miltonian"

  font "Miltonian-Regular.ttf"

  # No zap stanza required
end
