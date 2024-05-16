cask "font-supermercado-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/supermercadoone/SupermercadoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Supermercado One"
  homepage "https://fonts.google.com/specimen/Supermercado+One"

  font "SupermercadoOne-Regular.ttf"

  # No zap stanza required
end
