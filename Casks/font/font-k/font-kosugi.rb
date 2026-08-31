cask "font-kosugi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/kosugi/Kosugi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kosugi"
  homepage "https://fonts.google.com/specimen/Kosugi"

  font "Kosugi-Regular.ttf"

  # No zap stanza required
end
