cask "font-dorsa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dorsa/Dorsa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dorsa"
  homepage "https://fonts.google.com/specimen/Dorsa"

  font "Dorsa-Regular.ttf"

  # No zap stanza required
end
