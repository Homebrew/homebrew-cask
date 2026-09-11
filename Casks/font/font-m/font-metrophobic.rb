cask "font-metrophobic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metrophobic/Metrophobic-Regular.ttf"
  name "Metrophobic"
  homepage "https://fonts.google.com/specimen/Metrophobic"

  font "Metrophobic-Regular.ttf"

  # No zap stanza required
end
