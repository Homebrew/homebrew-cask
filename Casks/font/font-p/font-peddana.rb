cask "font-peddana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/peddana/Peddana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Peddana"
  homepage "https://fonts.google.com/specimen/Peddana"

  font "Peddana-Regular.ttf"

  # No zap stanza required
end
