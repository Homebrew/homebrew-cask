cask "font-alex-brush" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alexbrush/AlexBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alex Brush"
  homepage "https://fonts.google.com/specimen/Alex+Brush"

  font "AlexBrush-Regular.ttf"

  # No zap stanza required
end
