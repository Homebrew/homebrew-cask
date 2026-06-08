cask "font-dangrek" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dangrek/Dangrek-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dangrek"
  homepage "https://fonts.google.com/specimen/Dangrek"

  font "Dangrek-Regular.ttf"

  # No zap stanza required
end
