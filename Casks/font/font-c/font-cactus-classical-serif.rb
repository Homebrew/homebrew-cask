cask "font-cactus-classical-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cactusclassicalserif/CactusClassicalSerif-Regular.ttf"
  name "Cactus Classical Serif"
  homepage "https://github.com/aaronbell/CactusSerif"

  font "CactusClassicalSerif-Regular.ttf"

  # No zap stanza required
end
