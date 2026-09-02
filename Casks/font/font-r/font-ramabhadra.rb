cask "font-ramabhadra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ramabhadra/Ramabhadra-Regular.ttf"
  name "Ramabhadra"
  homepage "https://fonts.google.com/specimen/Ramabhadra"

  font "Ramabhadra-Regular.ttf"

  # No zap stanza required
end
