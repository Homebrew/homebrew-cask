cask "font-molle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/molle/Molle-Regular.ttf"
  name "Molle"
  homepage "https://fonts.google.com/specimen/Molle"

  font "Molle-Regular.ttf"

  # No zap stanza required
end
