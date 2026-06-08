cask "font-stint-ultra-expanded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stintultraexpanded/StintUltraExpanded-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stint Ultra Expanded"
  homepage "https://fonts.google.com/specimen/Stint+Ultra+Expanded"

  font "StintUltraExpanded-Regular.ttf"

  # No zap stanza required
end
