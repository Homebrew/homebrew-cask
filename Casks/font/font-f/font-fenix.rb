cask "font-fenix" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fenix/Fenix-Regular.ttf"
  name "Fenix"
  homepage "https://fonts.google.com/specimen/Fenix"

  font "Fenix-Regular.ttf"

  # No zap stanza required
end
