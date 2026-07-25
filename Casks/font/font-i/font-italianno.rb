cask "font-italianno" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/italianno/Italianno-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Italianno"
  homepage "https://fonts.google.com/specimen/Italianno"

  font "Italianno-Regular.ttf"

  # No zap stanza required
end
