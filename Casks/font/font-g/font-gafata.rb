cask "font-gafata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gafata/Gafata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gafata"
  homepage "https://fonts.google.com/specimen/Gafata"

  font "Gafata-Regular.ttf"

  # No zap stanza required
end
