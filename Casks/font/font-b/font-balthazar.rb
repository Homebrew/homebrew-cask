cask "font-balthazar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/balthazar/Balthazar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Balthazar"
  homepage "https://fonts.google.com/specimen/Balthazar"

  font "Balthazar-Regular.ttf"

  # No zap stanza required
end
