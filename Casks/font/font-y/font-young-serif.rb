cask "font-young-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/youngserif/YoungSerif-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Young Serif"
  homepage "https://fonts.google.com/specimen/Young+Serif"

  font "YoungSerif-Regular.ttf"

  # No zap stanza required
end
