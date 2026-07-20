cask "font-orbitron" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orbitron/Orbitron%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Orbitron"
  homepage "https://fonts.google.com/specimen/Orbitron"

  font "Orbitron[wght].ttf"

  # No zap stanza required
end
