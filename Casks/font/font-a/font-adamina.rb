cask "font-adamina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/adamina/Adamina-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Adamina"
  homepage "https://fonts.google.com/specimen/Adamina"

  font "Adamina-Regular.ttf"

  # No zap stanza required
end
