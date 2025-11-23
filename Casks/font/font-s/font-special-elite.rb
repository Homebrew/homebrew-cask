cask "font-special-elite" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/specialelite/SpecialElite-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Special Elite"
  homepage "https://fonts.google.com/specimen/Special+Elite"

  font "SpecialElite-Regular.ttf"

  # No zap stanza required
end
