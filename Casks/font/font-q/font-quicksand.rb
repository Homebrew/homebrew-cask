cask "font-quicksand" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/quicksand/Quicksand%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Quicksand"
  homepage "https://fonts.google.com/specimen/Quicksand"

  font "Quicksand[wght].ttf"

  # No zap stanza required
end
