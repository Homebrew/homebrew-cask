cask "font-niconne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/niconne/Niconne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Niconne"
  homepage "https://fonts.google.com/specimen/Niconne"

  font "Niconne-Regular.ttf"

  # No zap stanza required
end
