cask "font-numans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/numans/Numans-Regular.ttf"
  name "Numans"
  homepage "https://fonts.google.com/specimen/Numans"

  font "Numans-Regular.ttf"

  # No zap stanza required
end
