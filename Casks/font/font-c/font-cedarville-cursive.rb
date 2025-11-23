cask "font-cedarville-cursive" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cedarvillecursive/Cedarville-Cursive.ttf",
      verified: "github.com/google/fonts/"
  name "Cedarville Cursive"
  homepage "https://fonts.google.com/specimen/Cedarville+Cursive"

  font "Cedarville-Cursive.ttf"

  # No zap stanza required
end
