cask "font-candal" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/candal/Candal.ttf",
      verified: "github.com/google/fonts/"
  name "Candal"
  homepage "https://fonts.google.com/specimen/Candal"

  font "Candal.ttf"

  # No zap stanza required
end
