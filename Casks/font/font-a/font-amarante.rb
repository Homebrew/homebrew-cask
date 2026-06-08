cask "font-amarante" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amarante/Amarante-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Amarante"
  homepage "https://fonts.google.com/specimen/Amarante"

  font "Amarante-Regular.ttf"

  # No zap stanza required
end
