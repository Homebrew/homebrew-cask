cask "font-bilbo-swash-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bilboswashcaps/BilboSwashCaps-Regular.ttf"
  name "Bilbo Swash Caps"
  homepage "https://fonts.google.com/specimen/Bilbo+Swash+Caps"

  font "BilboSwashCaps-Regular.ttf"

  # No zap stanza required
end
