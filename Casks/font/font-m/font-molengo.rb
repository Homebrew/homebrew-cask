cask "font-molengo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/molengo/Molengo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Molengo"
  homepage "https://fonts.google.com/specimen/Molengo"

  font "Molengo-Regular.ttf"

  # No zap stanza required
end
