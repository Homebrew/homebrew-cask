cask "font-nosifer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nosifer/Nosifer-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nosifer"
  homepage "https://fonts.google.com/specimen/Nosifer"

  font "Nosifer-Regular.ttf"

  # No zap stanza required
end
