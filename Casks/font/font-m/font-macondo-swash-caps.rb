cask "font-macondo-swash-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/macondoswashcaps/MacondoSwashCaps-Regular.ttf"
  name "Macondo Swash Caps"
  homepage "https://fonts.google.com/specimen/Macondo+Swash+Caps"

  font "MacondoSwashCaps-Regular.ttf"

  # No zap stanza required
end
