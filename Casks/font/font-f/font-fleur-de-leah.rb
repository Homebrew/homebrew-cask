cask "font-fleur-de-leah" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fleurdeleah/FleurDeLeah-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fleur De Leah"
  homepage "https://fonts.google.com/specimen/Fleur+De+Leah"

  font "FleurDeLeah-Regular.ttf"

  # No zap stanza required
end
