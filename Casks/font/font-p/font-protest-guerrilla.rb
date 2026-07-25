cask "font-protest-guerrilla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestguerrilla/ProtestGuerrilla-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Guerrilla"
  homepage "https://fonts.google.com/specimen/Protest+Guerrilla"

  font "ProtestGuerrilla-Regular.ttf"

  # No zap stanza required
end
