cask "font-press-start-2p" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pressstart2p/PressStart2P-Regular.ttf"
  name "Press Start 2P"
  homepage "https://fonts.google.com/specimen/Press+Start+2P"

  font "PressStart2P-Regular.ttf"

  zap :not_required
end
