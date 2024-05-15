cask "font-just-another-hand" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/justanotherhand/JustAnotherHand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Just Another Hand"
  desc "Narrow brush drawn handwriting font, inspired by the handwriting of my high school days"
  homepage "https://fonts.google.com/specimen/Just+Another+Hand"

  font "JustAnotherHand-Regular.ttf"

  # No zap stanza required
end
