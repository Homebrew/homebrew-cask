cask "font-catamaran" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/catamaran/Catamaran%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Catamaran"
  homepage "https://fonts.google.com/specimen/Catamaran"

  font "Catamaran[wght].ttf"

  # No zap stanza required
end
