cask "font-nova-oval" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaoval/NovaOval.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Oval"
  homepage "https://fonts.google.com/specimen/Nova+Oval"

  font "NovaOval.ttf"

  # No zap stanza required
end
