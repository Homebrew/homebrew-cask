cask "font-almendra-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/almendradisplay/AlmendraDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Almendra Display"
  homepage "https://fonts.google.com/specimen/Almendra+Display"

  font "AlmendraDisplay-Regular.ttf"

  # No zap stanza required
end
