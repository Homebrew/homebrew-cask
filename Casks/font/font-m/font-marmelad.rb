cask "font-marmelad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marmelad/Marmelad-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marmelad"
  homepage "https://fonts.google.com/specimen/Marmelad"

  font "Marmelad-Regular.ttf"

  # No zap stanza required
end
