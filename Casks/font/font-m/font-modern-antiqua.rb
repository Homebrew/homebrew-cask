cask "font-modern-antiqua" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/modernantiqua/ModernAntiqua-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Modern Antiqua"
  homepage "https://fonts.google.com/specimen/Modern+Antiqua"

  font "ModernAntiqua-Regular.ttf"

  # No zap stanza required
end
