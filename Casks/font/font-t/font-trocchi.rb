cask "font-trocchi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trocchi/Trocchi-Regular.ttf"
  name "Trocchi"
  homepage "https://fonts.google.com/specimen/Trocchi"

  font "Trocchi-Regular.ttf"

  # No zap stanza required
end
