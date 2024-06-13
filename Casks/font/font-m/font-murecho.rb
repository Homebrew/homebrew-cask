cask "font-murecho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/murecho/Murecho%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Murecho"
  homepage "https://fonts.google.com/specimen/Murecho"

  font "Murecho[wght].ttf"

  # No zap stanza required
end
