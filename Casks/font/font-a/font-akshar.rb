cask "font-akshar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akshar/Akshar%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Akshar"
  homepage "https://fonts.google.com/specimen/Akshar"

  font "Akshar[wght].ttf"

  # No zap stanza required
end
