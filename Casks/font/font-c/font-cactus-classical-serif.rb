cask "font-cactus-classical-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cactusclassicalserif/CactusClassicalSerif-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cactus Classical Serif"
  homepage "https://fonts.google.com/specimen/Cactus+Classical+Serif"

  font "CactusClassicalSerif-Regular.ttf"

  # No zap stanza required
end
