cask "font-matemasie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/matemasie/Matemasie-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Matemasie"
  homepage "https://fonts.google.com/specimen/Matemasie"

  font "Matemasie-Regular.ttf"

  # No zap stanza required
end
