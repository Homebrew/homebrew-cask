cask "font-montaga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montaga/Montaga-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Montaga"
  homepage "https://fonts.google.com/specimen/Montaga"

  font "Montaga-Regular.ttf"

  # No zap stanza required
end
