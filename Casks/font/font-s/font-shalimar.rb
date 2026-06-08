cask "font-shalimar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shalimar/Shalimar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shalimar"
  homepage "https://fonts.google.com/specimen/Shalimar"

  font "Shalimar-Regular.ttf"

  # No zap stanza required
end
