cask "font-gugi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gugi/Gugi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gugi"
  homepage "https://fonts.google.com/specimen/Gugi"

  font "Gugi-Regular.ttf"

  # No zap stanza required
end
