cask "font-nova-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novamono/NovaMono.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Mono"
  homepage "https://fonts.google.com/specimen/Nova+Mono"

  font "NovaMono.ttf"

  # No zap stanza required
end
