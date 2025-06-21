cask "font-42dot-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/42dotsans/42dotSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "42dot Sans"
  homepage "https://fonts.google.com/specimen/42dot+Sans"

  font "42dotSans[wght].ttf"

  # No zap stanza required
end
