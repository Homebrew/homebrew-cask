cask "font-parkinsans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parkinsans/Parkinsans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Parkinsans"
  homepage "https://fonts.google.com/specimen/Parkinsans"

  font "Parkinsans[wght].ttf"

  # No zap stanza required
end
