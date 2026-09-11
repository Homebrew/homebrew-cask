cask "font-sarina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sarina/Sarina-Regular.ttf"
  name "Sarina"
  homepage "https://fonts.google.com/specimen/Sarina"

  font "Sarina-Regular.ttf"

  # No zap stanza required
end
