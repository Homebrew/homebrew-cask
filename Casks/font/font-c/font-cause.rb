cask "font-cause" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cause/Cause%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cause"
  homepage "https://fonts.google.com/specimen/Cause"

  font "Cause[wght].ttf"

  # No zap stanza required
end
