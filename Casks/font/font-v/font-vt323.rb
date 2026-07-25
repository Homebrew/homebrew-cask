cask "font-vt323" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vt323/VT323-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "VT323"
  homepage "https://fonts.google.com/specimen/VT323"

  font "VT323-Regular.ttf"

  # No zap stanza required
end
