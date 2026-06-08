cask "font-hahmlet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hahmlet/Hahmlet%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Hahmlet"
  homepage "https://fonts.google.com/specimen/Hahmlet"

  font "Hahmlet[wght].ttf"

  # No zap stanza required
end
