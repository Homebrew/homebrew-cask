cask "font-orienta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orienta/Orienta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Orienta"
  homepage "https://fonts.google.com/specimen/Orienta"

  font "Orienta-Regular.ttf"

  # No zap stanza required
end
