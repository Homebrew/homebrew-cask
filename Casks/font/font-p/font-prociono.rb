cask "font-prociono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/prociono/Prociono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Prociono"
  homepage "https://fonts.google.com/specimen/Prociono"

  font "Prociono-Regular.ttf"

  # No zap stanza required
end
