cask "font-mingzat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mingzat/Mingzat-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mingzat"
  desc "Unicode font based on jason glavy's jg lepcha custom-encoded font"
  homepage "https://fonts.google.com/specimen/Mingzat"

  font "Mingzat-Regular.ttf"

  # No zap stanza required
end
