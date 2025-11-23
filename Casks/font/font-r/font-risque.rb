cask "font-risque" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/risque/Risque-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Risque"
  homepage "https://fonts.google.com/specimen/Risque"

  font "Risque-Regular.ttf"

  # No zap stanza required
end
