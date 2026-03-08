cask "font-ramsina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ramsina/Ramsina-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ramsina"
  homepage "https://fonts.google.com/specimen/Ramsina"

  font "Ramsina-Regular.ttf"

  # No zap stanza required
end
