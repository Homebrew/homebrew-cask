cask "font-ponnala" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ponnala/Ponnala-Regular.ttf"
  name "Ponnala"
  homepage "https://fonts.google.com/specimen/Ponnala"

  font "Ponnala-Regular.ttf"

  # No zap stanza required
end
