cask "font-dosis" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dosis/Dosis%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Dosis"
  homepage "https://fonts.google.com/specimen/Dosis"

  font "Dosis[wght].ttf"

  # No zap stanza required
end
