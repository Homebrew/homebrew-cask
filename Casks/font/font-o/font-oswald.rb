cask "font-oswald" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oswald/Oswald%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Oswald"
  homepage "https://fonts.google.com/specimen/Oswald"

  font "Oswald[wght].ttf"

  # No zap stanza required
end
