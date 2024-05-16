cask "font-viga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/viga/Viga-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Viga"
  homepage "https://fonts.google.com/specimen/Viga"

  font "Viga-Regular.ttf"

  # No zap stanza required
end
