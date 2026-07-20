cask "font-shrikhand" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shrikhand/Shrikhand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shrikhand"
  homepage "https://fonts.google.com/specimen/Shrikhand"

  font "Shrikhand-Regular.ttf"

  # No zap stanza required
end
