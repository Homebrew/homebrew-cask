cask "font-warnes" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/warnes/Warnes-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Warnes"
  homepage "https://fonts.google.com/specimen/Warnes"

  font "Warnes-Regular.ttf"

  # No zap stanza required
end
