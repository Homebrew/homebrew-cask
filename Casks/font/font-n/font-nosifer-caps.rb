cask "font-nosifer-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nosifercaps/NosiferCaps-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nosifer Caps"
  homepage "https://fonts.google.com/specimen/Nosifer+Caps"

  font "NosiferCaps-Regular.ttf"

  # No zap stanza required
end
