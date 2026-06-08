cask "font-capriola" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/capriola/Capriola%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Capriola"
  homepage "https://fonts.google.com/specimen/Capriola"

  font "Capriola[wght].ttf"

  # No zap stanza required
end
