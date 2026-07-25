cask "font-alien-block" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alienblock/AlienBlock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alien Block"
  homepage "https://fonts.google.com/specimen/Alien+Block"

  font "AlienBlock-Regular.ttf"

  # No zap stanza required
end
