cask "font-mingzat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mingzat/Mingzat-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mingzat"
  homepage "https://fonts.google.com/specimen/Mingzat"

  font "Mingzat-Regular.ttf"

  # No zap stanza required
end
