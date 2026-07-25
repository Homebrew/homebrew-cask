cask "font-alexandria" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alexandria/Alexandria%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Alexandria"
  homepage "https://fonts.google.com/specimen/Alexandria"

  font "Alexandria[wght].ttf"

  # No zap stanza required
end
