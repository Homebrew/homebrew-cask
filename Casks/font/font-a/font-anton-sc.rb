cask "font-anton-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antonsc/AntonSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Anton SC"
  homepage "https://fonts.google.com/specimen/Anton+SC"

  font "AntonSC-Regular.ttf"

  # No zap stanza required
end
