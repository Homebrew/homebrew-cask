cask "font-kolker-brush" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kolkerbrush/KolkerBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kolker Brush"
  homepage "https://fonts.google.com/specimen/Kolker+Brush"

  font "KolkerBrush-Regular.ttf"

  # No zap stanza required
end
